import React, { useState } from 'react';
import { useForm } from 'react-hook-form';
import axios from 'axios';
import '../css/Form.css';

function Form() {
  const form = useForm();
  const { register, handleSubmit, formState } = form;
  const { errors } = formState;

  const onSubmit = async (data) => {
    try {
      const response = await fetch('http://127.0.0.1:3000/watches', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
      });
      const responseData = await response.json();
      console.log(responseData);
      alert('Form submission successful');
      form.reset();
      window.location.reload(); // Refresh the page
    } catch (error) {
      console.log(error);
      alert('Form submission failed');
    }
  };

  return (
    <div className="form-container">
      <h1 className="text-4xl">Add Your Watch</h1>
      <form className="watch-form" onSubmit={handleSubmit(onSubmit)}>
        <div className="form-group">
          <label htmlFor="name">Name</label>
          <input
            type="text"
            {...register('name', {
              required: {
                value: true,
                message: 'Please enter the name of the watch',
              },
            })}
          />
          {errors.name && <p className="error-message">{errors.name.message}</p>}
        </div>

        <div className="form-group">
          <label htmlFor="brand">Brand</label>
          <input
            type="text"
            {...register('brand', {
              required: {
                value: true,
                message: 'Please enter the brand of the watch',
              },
            })}
          />
          {errors.brand && <p className="error-message">{errors.brand.message}</p>}
        </div>

        <div className="form-group">
          <label htmlFor="price">Price</label>
          <input
            type="number"
            {...register('price', {
              required: {
                value: true,
                message: 'Please enter the price of the watch',
              },
            })}
          />
          {errors.price && <p className="error-message">{errors.price.message}</p>}
        </div>
        <div className="form-group">
          <label htmlFor="image_url">Image_url</label>
          <input
            type="text"
            {...register('image_url', {
              required: {
                value: true,
                message: 'Please enter the image_url of the watch',
              },
            })}
          />
          {errors.image_url && <p className="error-message">{errors.image_url.message}</p>}
        </div>
        <div className="form-group">
          <label htmlFor="year">Year</label>
          <input
            type="number"
            {...register('year', {
              required: {
                value: true,
                message: 'Please enter the year of the watch',
              },
            })}
          />
          {errors.year && <p className="error-message">{errors.year.message}</p>}
        </div>

        <div className="form-group">
          <label htmlFor="dealer_id">Dealer ID</label>
          <input
            type="number"
            {...register('dealer_id', {
              required: {
                value: true,
                message: 'Please enter the dealer ID',
              },
            })}
          />
          {errors.dealer_id && <p className="error-message">{errors.dealer_id.message}</p>}
        </div>

        <button className="bg-red-600 hover:bg-red-400 m-0">Submit</button>
      </form>
    </div>
  );
}

export default Form;
