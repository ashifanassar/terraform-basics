variable "ingress_rules" {
    default = [
        {
        description     = "ssh"
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
        },
        
        {
        description     = "web"
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
        },

        {
        description     = "app"
        from_port       = 8080
        to_port         = 8080
        protocol        = "tcp"
        cidr_blocks     = ["172.31.0.0/16"]
        },

        {
        description     = "Nexus"
        from_port       = 8081
        to_port         = 8081
        protocol        = "tcp"
        cidr_blocks     = ["172.31.0.0/16"]
        }

    ]
}


variable "egress_rules" {
    default = [
    
    {
    description     = "HTTP"
    from_port       = 0
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    },

    {
    description     = "HTTPS"
    from_port       = 0
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    },

    {
    description     = "All"
    from_port       = 0
    to_port         = 0
    protocol        = "All"
    cidr_blocks     = ["0.0.0.0/0"]

    }
    ]


}
  
