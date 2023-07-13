import React from 'react'
import '../css/Navbar.css'
function Navbar() {
    return (
      <div className=' w-16 md:w-32 lg:w-48'>
          <div className='flex sticky  '>
              <h1 className='easy'>EAZY<span style={{color: '#FFCB74'}}>SHOPPE</span></h1>
              <a className='list-none mx-16   text-4xl py-8 ' href="#">Home</a>  
              <a  className='list-none mx-16   text-4xl py-8' href="#">About</a>
              <a className='list-none mx-16   text-4xl py-8' href="#">Contact</a> 
              <a className='list-none mx-16   text-4xl py-8' href="#">Login</a>     
              <a className='list-none mx-16   text-4xl py-8' href="#">Register</a> 
              <a className='list-none mx-16   text-4xl py-8' href="#">Cart</a>  
          </div>
        
      </div>
    );
  }
  
export default Navbar