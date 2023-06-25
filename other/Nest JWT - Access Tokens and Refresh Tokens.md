
Simple Auth with Authorization Token

![[nest_jwt_0.png]]

*SUB* > (Subject) ID whos created the token (UUID)
*IAT* > (Issued at) Timestamp when tokens as created
*EXP* > (Expiration) Timestamp when tokens will  expire

Simple Auth with Refresh Token

![[nest_jwt_1.png]]

For example, user can sign in for one week. Then he needs to 

The problems behind the first scenario

- Log out
	- JWT are self-contained
- JWT can be stolen
	- We can blacklist the token when user report

![[nest_jwt_2.png]]![[nest_jwt_3.png]]

Prisma
npx prisma migrate dev --create-only
npx prisma generate

Packages
- passport
- passport-jwt
- @nestjs/passport
- @nestjs/jwt
- bcrypt
- class-transformer
- class-validator

Dev Packages
- @types/bcrypt
- @types/passport-jwt

# NestJS Authentication
## JWTs
## Sessions
