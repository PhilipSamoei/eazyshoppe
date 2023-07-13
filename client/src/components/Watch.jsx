import React, { useState, useEffect } from 'react';
import '../css/Watch.css'

function Watch() {
  const url = "http://127.0.0.1:3000/watches"
  const [watches, setWatches] = useState([]);

  useEffect(() => {
    fetchWatches();
  }, []);

  const fetchWatches = () =>{
    return fetch(url)
    .then(res => res.json())
    .then ((data) =>setWatches(data))
  }

  return (
    <div>
  <h1 className='text-center text-4xl'>Vintage Watches</h1>
  <div className="card-container">
    {watches.map((watch) => (
      <div className="card" key={watch.id}>
        <img className="card-image" src={watch.image_url} alt={watch.name} />
        <div className="card-details">
          <h2 className="card-title">{watch.name}</h2>
          <p className="card-brand">Brand: {watch.brand}</p>
          <p className="card-price">Price: ${watch.price}</p>
          <p className="card-year">Year: {watch.year}</p>
        </div>
      </div>
    ))}
  </div>
</div>
  );
}

export default Watch;
