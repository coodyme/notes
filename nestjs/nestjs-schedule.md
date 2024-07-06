#nodejs 
#nestjs 
#cron

# NestJS Schedule

With Schedule module you can allow task schedulling using `cron`.

To begin, install the required deps.

```bash
yarn install --save @nestjs/schedule
```

Then, import the `ScheduleModule` into the root `AppModule`

```typescript
import { Module } from '@nestjs/common';
import { ScheduleModule } from '@nestjs/schedule';

@Module({
  imports: [
    ScheduleModule.forRoot()
  ],
})
export class AppModule {}
```

## Declarative cron jobs

With `@Cron` decorator you can Cron jobs:

- Once, at a specified date/time
- On a recurring basis

The decorator supports all standard cron patterns:

- Asterisk (e.g. `*`)
- Ranges (e.g. `1-3,5`)
- Steps (e.g. `*/2`)

```javascript
* * * * * *
| | | | | |
| | | | | day of week
| | | | months
| | | day of month
| | hours
| minutes
seconds (optional)
```

- Visualize cron Patterns: https://crontab.guru/
- Use `enum` with commonly used cron patterns: UseCronExpression.EVERY_10_SECONDS

> Use JavaScript date arithmetic to schedule jobs relative to the current date. For example, `@Cron(new Date(Date.now() + 10 * 1000))` to schedule a job to run 10 seconds after the app starts.


Also, you can supply additional options as the second parameter to the `@Cron()` decorator.

| `name`      | Useful to access and control a cron job after it's been declared.                                                                                                                                                                                      |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `timeZone`  | Specify the timezone for the execution. This will modify the actual time relative to your timezone. If the timezone is invalid, an error is thrown. You can check all timezones available at [Moment Timezone](http://momentjs.com/timezone/) website. |
| `utcOffset` | This allows you to specify the offset of your timezone rather than using the `timeZone` param.                                                                                                                                                         |
| `disabled`  | This indicates whether the job will be executed at all.                                                                                                                                                                                                |

For example:

```typescript
import { Injectable } from '@nestjs/common';
import { Cron, CronExpression } from '@nestjs/schedule';

@Injectable()
export class NotificationService {
  @Cron('* * 0 * * *', {
    name: 'notifications',
    timeZone: 'America/Sao_Paulo',
  })
  triggerNotifications() {}
}
```

## Dynamic cron jobs

The `@nestjs/schedule` module provides a dynamic API that enables managing declarative cron jobs, timeouts and intervals.

Inject in the constructor:

```typescript
constructor(private schedulerRegistry: SchedulerRegistry) {}
```

Use the decorator with name:

```typescript
@Cron('* * 8 * * *', {
  name: 'notifications',
})
triggerNotifications() {}
```

Access this job using:

```typescript
const job = this.schedulerRegistry.getCronJob('notifications');

job.stop();
console.log(job.lastDate());
```

> Import the `SchedulerRegistry` from the `@nestjs/schedule` package.


The `getCronJob()` method returns the named cron job. The returned `CronJob` object has the following methods:

- `stop()` - stops a job that is scheduled to run.
- `start()` - restarts a job that has been stopped.
- `setTime(time: CronTime)` - stops a job, sets a new time for it, and then starts it
- `lastDate()` - returns a `DateTime` representation of the date on which the last execution of a job occurred.
- `nextDate()` - returns a `DateTime` representation of the date when the next execution of a job is scheduled.
- `nextDates(count: number)` - Provides an array (size `count`) of `DateTime` representations for the next set of dates that will trigger job execution. `count` defaults to 0, returning an empty array.

> Use `toJSDate()` on `DateTime` objects to render them as a JavaScript Date equivalent to this DateTime.

From `SchedulerRegistry` you can use the following methods to:

- `addCronJob()` - **Create** a new cron job dynamically using the `SchedulerRegistry#addCronJob` method
- `deleteCron()` - **Delete** a named cron job using the `SchedulerRegistry#deleteCronJob`
- `getCronJobs()` - **List** all cron jobs using the `SchedulerRegistry#getCronJobs`

For more information: https://docs.nestjs.com/techniques/task-scheduling#dynamic-schedule-module-api


https://dev.to/edgargonzalez525/how-to-schedule-a-cron-job-with-nestjs-in-less-than-5-mins-cmi

https://www.youtube.com/watch?v=-6ymgJZj_O4

https://medium.com/@hahajeng1234/real-world-problem-of-nestjs-schedule-and-practical-solution-e6bcb38163d2

https://www.youtube.com/watch?v=FX5JySeL1WY