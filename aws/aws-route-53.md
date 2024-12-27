# Route 53

- Route 53 > It is better to create a DNS CNAME pointing to your Elastic Beanstalk URL rather than the ELB URL. The reason being that in Elastic Beanstalk, you can start multiple environments within the same application, then swap the URLs around.

> Elastic Beanstalk URL points to the Elastic Load Balancer UR by defaultL. This is intentional.

> This way, if you want to move people to a new environment, you just swap the EB URL and you won't need to make any DNS changes yourself.


- 
