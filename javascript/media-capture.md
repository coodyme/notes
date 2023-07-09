## Media Capture and Streams API

This is written with reference to the [Media Devices API](https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices) and the [Media Recorder API](https://developer.mozilla.org/en-US/docs/Web/API/MediaRecorder) documented in [MDN](https://developer.mozilla.org/en-US/)

Recording audio involves a series of steps:

- Start recording the audio
- While recording, store the audio data chunks
- Stop recording the audio
- Convert the audio data chunks to a single audio data blob
- Create a URL for that single audio data blob
- Play the audio

## Start recording the audio

We can call `navigator.mediaDevices.getUserMedia` to start recording. The `getUserMedia` will return a promise that resolves to the audio stream.

Once we have the audio stream, we can pass that stream into the `MediaRecorder` constructor and then call the start method.

```javascript
navigator.mediaDevices.getUserMedia({ audio: true })
  .then(stream => {
    const mediaRecorder = new MediaRecorder(stream);
    mediaRecorder.start();
  });
```

## While recording, store the audio data chunks

The way we save the recorded audio is by collecting chunks of audio data. We can collect audio data by listening for `dataavailable` events.

```javascript
const chunks = [];

mediaRecorder.addEventListener("dataavailable", event => {
	chunks.push(event.data);
});
```

## Stop recording the audio

We need to stop collecting audio chunks using a stop function

```javascript
mediaRecorder.stop()
```

## Convert the audio chunks to a single data blob

Now we will use `Blob` constructor passing the audio chunks after trigger stop function

```javascript
const audioBlob = new Blob(chunks)
```

## Create a URL for the data blob

Now that we have the audio blog, we can also create a URL that points to that blob by using `URL.createObjectURL`

```javascript
const audioURL = URL.createObjectURL(audioBlob)
```

## Play the audio

We play an audio by passing the audio URL created before to `Audio` constructor and call the play method.

This will create and `HTMLAudioElement` and play the audio.

```js
const audio = new Audio(audioURL)
audio.play()
```

#javascript 
#media-devices
#media-recorder
#MDN
