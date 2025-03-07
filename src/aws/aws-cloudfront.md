#aws 
#devops 
#cloud 
#aws-cloudfront

Cloudfront is a CDN - Content Develiery Network. It helps deliver static and dynamic web content, videos, apps globally with low latency and high transfer speeds.

Features:

- Edge Locations
- Origin
- Distribution
- Caching
- Security
- Dynamic Content Support
- Usage Analytics

A distributed network of servers that caches content close to end users.

Benefits:
- Improves website load times
- Reduces bandwidth cost
- Increases availability
- Improves security

# Setup CDN

- Origin domain: S3, ELB, etc..
- Origin access: restrict to Cloudfront only
- Viewer: Redirect HTTP to HTTPS (Secure Connection)
- Cache policy: CachingOptimized
- WAF: Enable security protections in production (Costs)
- Use all edge locations (best performance)
- Copy policy and update S3 Bucket Policy