import React, { useState, useEffect } from 'react';

function Slideshow() {
// Create state variables for the index and image array
const [index, setIndex] = useState(0);
const images = [
    "https://img.jamesedition.com/listing_images/2020/11/11/11/22/30/4b2f35c0-e7f1-49f5-9174-5a42a751743b/je/2000xxs.jpg",
    "https://images.pexels.com/photos/277319/pexels-photo-277319.jpeg?cs=srgb&dl=pexels-pixabay-277319.jpg&fm=jpg",
    "https://cdn.i-scmp.com/sites/default/files/d8/images/canvas/2022/12/23/25d77b48-59a0-4c7b-85b8-83e8716aedbb_22bbd2c8.jpg"
    ];

// Use useEffect to increment the index and update the image every 5 seconds
useEffect(() => {
const intervalId = setInterval(() => {
setIndex(prevIndex => (prevIndex + 1) % images.length);
}, 6000);

return () => clearInterval(intervalId);
}, []);

// Render the current image
return (
<div className='h-3/4'>
    <img  className= "h-fit rounded m-4 " src={images[index]} alt="Slider" />
</div>
);
}

export default Slideshow;