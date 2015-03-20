# -*- encoding: utf-8 -*-
import os
import logging
import sqlite3

from pyramid.config import Configurator
from pyramid.events import NewRequest
from pyramid.events import subscriber
from pyramid.events import ApplicationCreated
from pyramid.httpexceptions import HTTPFound
from pyramid.session import UnencryptedCookieSessionFactoryConfig
from pyramid.view import view_config

from wsgiref.simple_server import make_server

logging.basicConfig()
log = logging.getLogger(__file__)

here = os.path.dirname(os.path.abspath(__file__))

# Start page where we can enter our credit card number
@view_config(route_name='cc_number', renderer='cc_number/view.mako')
def cc_number_view(request):
    clear_session(request)
    if request.method == 'POST' and request.POST.get('cc_number'):
        cc_number = request.POST.get('cc_number')
        valid_cc = ('0000000000000000', '1111111111111111', '2222222222222222')
        if cc_number.replace('-', '') not in valid_cc:
            request.session.flash('Your credit card %s wasn\'t found! Please try again.' % cc_number)
            return HTTPFound(location=request.route_url('error'))
        request.session['cc_number'] = cc_number
        return HTTPFound(location=request.route_url('pin'))
    return {}

# Page where we can enter our pin code, should be accessible only if cc was valid
@view_config(route_name='pin', renderer='pin/view.mako')
def pin_view(request):
    if 'cc_number' not in request.session:
        return HTTPFound(location=request.route_url('cc_number'))

    if request.method == 'POST' and request.POST.get('pin'):
        pin = request.POST.get('pin')
        valid_pins = ('1111', '2222', '3333')
        if pin not in valid_pins:
            request.session.flash('Your pin code isn\'t valid! Please try again. Left number of tries: 4')
            return HTTPFound(location=request.route_url('error'))
        request.session['pin'] = pin
        return HTTPFound(location=request.route_url('operations'))
    return {}

@view_config(route_name='operations', renderer='operations.mako')
def operations_view(request):
    if not is_cc_pin_valid(request):
        return HTTPFound(location=request.route_url('cc_number'))

    return {}

@view_config(route_name='balance', renderer='balance.mako')
def balance_view(request):
    if not is_cc_pin_valid(request):
        return HTTPFound(location=request.route_url('cc_number'))
    return {}

@view_config(route_name='withdraw', renderer='withdraw.mako')
def withdraw_view(request):
    if not is_cc_pin_valid(request):
        return HTTPFound(location=request.route_url('cc_number'))
    return {}

@view_config(route_name='error', renderer='error.mako')
def error_view(request):
    return {}

@view_config(context='pyramid.exceptions.NotFound', renderer='notfound.mako')
def notfound_view(request):
    request.response.status = '404 Not Found'
    return {}

# subscribers
@subscriber(NewRequest)
def new_request_subscriber(event):
    log.warn('Initializing database...')
    request = event.request
    settings = request.registry.settings
    #request.db = sqlite3.connect(settings['db'])
    #request.add_finished_callback(close_db_connection)

def close_db_connection(request):
    request.db.close()    

def clear_session(request):
    request.session.pop('cc_number', None)
    request.session.pop('pin', None)

def is_cc_pin_valid(request):
    return 'cc_number' in request.session and 'pin' in request.session

if __name__ == '__main__':
    # configuration settings
    settings = {}
    settings['reload_all'] = True
    settings['debug_all'] = True
    settings['mako.directories'] = os.path.join(here, 'templates')
    #settings['db'] = os.path.join(here, 'tasks.db')
    # session factory
    session_factory = UnencryptedCookieSessionFactoryConfig('itsaseekreet')
    # configuration setup
    config = Configurator(settings=settings, session_factory=session_factory)
    # add mako templating
    config.include('pyramid_mako')
    # routes setup
    config.add_route('cc_number', '/')
    config.add_route('pin', '/pin')


    config.add_route('operations', '/operations')
    config.add_route('balance', '/balance')
    config.add_route('withdraw', '/withdraw')
    config.add_route('error', '/error')
    # static view setup
    config.add_static_view('static', os.path.join(here, 'static'))
    # scan for @view_config and @subscriber decorators
    config.scan()
    # serve app
    app = config.make_wsgi_app()
    server = make_server('0.0.0.0', 8080, app)
    server.serve_forever()