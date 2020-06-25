#!/bin/bash -x
#	./bin/app-init-start.sh
#########################################################################
#      Copyright (C) 2020        Sebastian Francisco Colomar Bauza      #
#      SPDX-License-Identifier:  GPL-2.0-only                           #
#########################################################################
export branch_docker_aws=master                                         ;
export debug=false                                                      ;
export debug=true                                                       ;
export domain=github.com                                                ;
export mode=kubernetes                                                  ;
export mode=swarm                                                       ;
export repository_docker_aws=docker-aws                                 ;
export stack=${repository_docker_aws}-$( date +%s )                     ;
export username_docker_aws=secobau                                      ;
#########################################################################
export A=$username_docker_aws/$repository_docker_aws			;
#########################################################################
export apps=""                                                          ;
export apps=" $apps dockercoins.yaml "                                  ;
export apps=" $apps petclinic.yaml "                                    ;
export apps=""                                                          ;
export apps=" $apps php.yaml "                                          ;
export branch_app=master                                                ;
export repository_app=docker-aws                                        ;
export username_app=secobau                                             ;
#########################################################################
file=app-init.sh                                                        ;
path=bin								;
#########################################################################
./$path/$file                                                           ;
#########################################################################
