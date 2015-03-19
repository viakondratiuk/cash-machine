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

@view_config(route_name='cc', renderer='cc.mako')
def cc_view(request):
    return {'start': 'something'}

@view_config(route_name='vcard', renderer='validate_card.mako')
def vcard_view(request):
    cc = request.POST.get('credit_card')
    #TODO: if cc found go to pin page, othervise back to cc page and show an error that card not found
    return {'cc': cc}

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
    config.add_route('cc', '/')
    config.add_route('vcard', '/vcard')
    # static view setup
    config.add_static_view('static', os.path.join(here, 'static'))
    # scan for @view_config and @subscriber decorators
    config.scan()
    # serve app
    app = config.make_wsgi_app()
    server = make_server('0.0.0.0', 8080, app)
    server.serve_forever()