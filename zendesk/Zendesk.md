# Zendesk

Category: Zendesk
Last edited time: July 22, 2022 1:41 PM

# Difference between Requester, Assignee, Submitter and User

- ticket.requester, que é o solicitante do ticket
- ticket.assignee, que é o agente atribuído ao ticket
- ticket.submitter, que é o usuário que enviou a solicitação ou o agente que abriu o ticket em nome do solicitante
- current_user, que é o usuário que está atualizando o ticket no momento (usuário final ou agente)

[https://support.zendesk.com/hc/pt-br/articles/203662156-Referência-de-placeholders-do-Zendesk-Support#topic_giz_opl_rc](https://support.zendesk.com/hc/pt-br/articles/203662156-Refer%C3%AAncia-de-placeholders-do-Zendesk-Support#topic_giz_opl_rc)

## ZAT, ZAF and ZAM

- ZAT Zendesk Application Tools is a collection of local development tools that simplify building and deploying Zendesk Apps
- ZAF Zendesk App Framkework provides the fundamental structure to support the development of an application.
- ZAM Zendesk Apps Marketplace is where apps that work with our products are published

## Sample Questions

<aside>
💡 During installation of an app, the admin enters non-secure settings that are used by the app during runtime. What method within the ZAF Client is used to retrieve these settings?

**client.metadata**

</aside>

<aside>
💡 What scenario requires a secure setting within a Zendesk app?

**You are developing an app that uses ZAF client.request to authenticate requests to a
3rd party API**

</aside>

<aside>
💡 You want to find all tickets requested by users in the 'Acme Corp' organization that have not
been assigned to an agent. What is the correct query string?

**?query=type:ticket organization:'Acme Corp' assignee:none**

</aside>

<aside>
💡 What JavaScript event fires when a button is pressed?

**click**

</aside>

<aside>
💡 What would cause a 401 response code?

**Invalid credentials for authentication**

</aside>

<aside>
💡 How do you create a ZAF Client for your app to communicate with the Zendesk product?

**ZAFClient.init()**

</aside>

<aside>
💡 An app needs to display a ticket form field, but keep the user from changing it. What method within the ZAF Client is called to disable a ticket form field?

**client.invoke()**

For example, to hide the priority ticket field, call `client.invoke('ticketFields:priority.hide')`.****

</aside>

<aside>
💡 You were just assigned a new project by your manager to create a custom Zendesk app for your Support instance that displays order information for your company in the ticket view. What zat command can you use to quickly get the files and folder structure needed to start building this new ZAF app?

**zat new | zat new —scaffold**

if you are using zcli the command must be **zcli apps:create**

</aside>

<aside>
💡 What ZAT command executes tests against your app?

**zat validate**

</aside>

<aside>
💡 What type of request is used in order to include information that should be hidden from the end-user client side?

**secure**

</aside>

<aside>
💡 You are writing an app that checks an external database for an end-user's email and shows the corresponding data in Zendesk. What event do you listen for to make sure the data is up to date?

**ticket.requester.email.changed**

You can use the following events in a ticket sidebar app to listen for changes to the ticket

[https://developer.zendesk.com/api-reference/apps/apps-support-api/ticket_sidebar/](https://developer.zendesk.com/api-reference/apps/apps-support-api/ticket_sidebar/)

</aside>

<aside>
💡 What is the correct ZAF Client call to detect the presence of another user on a ticket?

**client.get('ticket.viewers')**

</aside>

<aside>
💡 You've been asked to create an app that displays customer data to agents while viewing the customer's profile. Where does this app belong?

**user_sidebar**

[https://developer.zendesk.com/api-reference/apps/apps-support-api/introduction/](https://developer.zendesk.com/api-reference/apps/apps-support-api/introduction/)

</aside>

<aside>
💡 Where do you add app settings in your app?

**manifest.json**

</aside>

<aside>
💡 You would like to access an authenticated API using secure settings. What URL is allowed for use with the secure proxy?

**https://secure.api.com**

</aside>

<aside>
💡 What is the correct formatting to obfuscate your subdomain using a placeholder token?

**{{setting.subdomain}}.example.com**

</aside>

<aside>
💡 What file do you use to save your app's short and long descriptions for the Apps Marketplace?

**en.json**

</aside>

<aside>
💡 While implementing Zendesk you created thousands of tickets for testing purposes. Now that you're launching Zendesk officially, you wish to bulk delete all of the unnecessary tickets. What cURL command do you use?

**curl https://example.zendesk.com/api/v2/tickets/destroy_many.json?ids=1,2,3 -u user@example.com:password -X DELETE**

</aside>

<aside>
💡 How many background jobs can you have queued or running at one time?

**30**

</aside>

<aside>
💡 You are using the incremental export to retrieve all tickets created in the last 24 hours and you are unsure of how many tickets will be returned. How do you determine if you have reached the last page of results?

**The 'count' property will have a value less than 1000.**

</aside>

<aside>
💡 What status code would you receive if you made a PUT call to the /api/v2/tickets.json endpoint without a ticket ID?

404

</aside>

<aside>
💡 What is the correct syntax for side-loading additional record types?

**api/v2/tickets.json?side-load=users**

</aside>

<aside>
💡 What type of request is used in order to include information that should be hidden from the end-user client side?

**secure**

</aside>

<aside>
💡 What is the correct syntax for side-loading additional record types?

**api/v2/tickets.json?include=users**

</aside>

<aside>
💡 You are asked to develop a client-side Zendesk app that communicates with an external 3rd party API. You are provided with an authentication key that has its permissions scoped to only specific resources and expires exactly 8 hours after being generated. What type of authentication strategy has this 3rd party API provider implemented?

**OAuth Authentication**

</aside>

<aside>
💡 What DOM structure will show the two strings 'Hello' and 'Inlined World' on a single a line?

**<span>Hello</span> <span>Inlined World</span>**

</aside>

```html
Given the following code, what is output to the console?

var promiseA = Promise.resolve(100);
var promiseB = Promise.reject(200);
promiseA.then(function(data) {
  return promiseB;
}).then(function(data) { 
  console.log(data);
}).catch(function(data) {
  console.log(data);
});

200
```

<aside>
💡 What ZAF API is designed to work around Access-Control-Allow-Origin errors?

**client.rquest**

</aside>

<aside>
💡 You are writing an app that needs to display JSON data directly to the user. What method will allow you to format it for better readability?

 **JSON.stringify(obj, null, 2);**

</aside>

<aside>
💡 When debugging a client-side issue, where do you locate details on thrown exceptions?

**Console Tab**

</aside>

<aside>
💡 What is the solution for an API request receiving a 429 response code?

**Wait until Retry-After timestamp**

</aside>

<aside>
💡 When developing a new app, zat validate is run and returns 'assets/index.html is either an invalid location URI, refers to a missing asset, or does not use HTTPS'. What needs to be checked for correctness?

 **Make sure assets/index.html exists in the assets folder.**

</aside>

<aside>
💡 You are writing a new private app and run zat create to upload it to your Zendesk instance for the first time. You receive the error 'Manifest file cannot be found in the given path. Check you are pointing to the path that contains your manifest.json'. What should you check?

**Run zat create in folder that contains manifest.json**

</aside>