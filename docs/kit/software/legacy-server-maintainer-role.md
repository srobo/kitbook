---
original:
  authors: Richard Barlow
  url: https://bitbucket.org/richardbarlow/sr-kit-sw-coord/wiki/legacy_server_maintainer_role
---
# Legacy Server Maintainer (LSM) Role Definition

This page defines the Legacy Server Maintainer (LSM) role that reports to the Kit Software Coordinator. This role cannot create subordinate roles. Note that this role has some overlap of responsibilities with the Ancillary Software Coordinator and there has been an agreement between the Kit Software Coordinator and the Ancillary Software Coordinator regarding the reporting/management of the LSM role.

## Purpose

The role of the LSM is to maintain the operation of the legacy server inherited by Student Robotics prior to the formation of the CIO. The legacy server is defined as the Linode server known as 'saffron'. This machine currently hosts a selection of services, the management of which fall under multiple roles in the CIO organisational structure. Due to the multiplicity of the legacy server, it is desired for it to be retired and replaced with a system that allows for running of services managed by separate roles to be fully independent of one another.

Since there is the intention to ultimately retire the legacy server, this role has an inherently finite lifetime. Once the server has been retired this role will cease to exist.

Note that this role does not allow for any further development of features specific to the legacy server itself; it is purely a maintenance role to keep the server operational. This does not preclude development of the services currently running on the legacy server by the relevant roles and the LSM providing support to those roles as necessary.

## Responsibilities

* Ensuring the continued availability of all services hosted on the legacy server.
* Application of security patches/update where necessary.
* Modification of the server configuration when required by a service hosted on the server (i.e. if the IDE required a puppet change).
* Assisting other roles in the migration of services currently hosted on the legacy server.
* Providing encouragement to the roles responsible for the services currently hosted on the legacy server to migrate them away.

## Reporting

The LSM must provide a report summarising all activities relating to their role to the Kit Software Coordinator each month. This report should be in the form of an email containing at least the following information:

* Any incidents that have resulted in lost of service availability.
* Any modifications that have been made to the server configuration.
* what services are still to be migrated away from the legacy server.
* Any known upcoming/planned modifications.
