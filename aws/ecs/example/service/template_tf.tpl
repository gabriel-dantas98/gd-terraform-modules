[   {
    "dnsSearchDomains": null,
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "${cloudwatch_group_log}",
        "awslogs-region": "${cloudwatch_region_log}",
        "awslogs-stream-prefix": "${cloudwatch_prefix_log}"
      }
    },
    "entryPoint": null,
    "portMappings": [
      {
        "hostPort": ${host_port},
        "protocol": "${protocol}",
        "containerPort": ${container_port}
      }
    ],
    "command": null,
    "linuxParameters": null,
    "cpu": ${container_cpu},
    "environment": [
      {
        "name": "DATABASE_PASSWORD",
        "value": "${database_password}"
      },
      {
        "name": "DATABASE_URL",
        "value": "${database_url}"
      },
      {
        "name": "DATABASE_USERNAME",
        "value": "${database_username}"
      }
    ],
    "ulimits": null,
    "dnsServers": null,
    "mountPoints": [],
    "workingDirectory": null,
    "dockerSecurityOptions": null,
    "memory": null,
    "memoryReservation": ${container_memory_reservation},
    "volumesFrom": [],
    "image": "${ecr_repository_name}",
    "disableNetworking": null,
    "interactive": null,
    "healthCheck": null,
    "essential": true,
    "links": null,
    "hostname": null,
    "extraHosts": null,
    "pseudoTerminal": null,
    "user": null,
    "readonlyRootFilesystem": null,
    "dockerLabels": null,
    "systemControls": null,
    "privileged": null,
    "name": "${container_name}"
  }
]