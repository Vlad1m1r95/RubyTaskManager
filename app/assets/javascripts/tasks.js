 window.onload = function() {
 let $selects_status = document.querySelectorAll('#status_select')
 let $selects_assignee = document.querySelectorAll('#assignee_select')
 let $search  = document.querySelector('#search-js')
 
 let input  = ""
 let $inputs = document.querySelectorAll('input')

 const task_name = document.querySelector('#task_name')
 const task_status =  document.querySelector('#task_status')
 
 if(task_name){
   task_name.classList.add('form-control')
 }
 if(task_status){
  task_status.classList.add('form-control')
}
let select_status = ""
let select_assignee = ""
if($search){
  $search.addEventListener('click' , function(event){ 
    event.preventDefault()
    $selects_status.forEach((value) => {
      select_status = value
      
  })

  
  $selects_assignee.forEach((value) => {
     select_assignee = value
     
      
  })
  $inputs.forEach((value) => {
    input = value
  })
  // console.log(select_status.value)
  // console.log(select_assignee.value)
  // console.log(input.value)
    })
}
 
    
    

    
  
    
  
  
  
  $selects_status.forEach((select) => {
      select.classList.add('form-control')
  })
  
  $blocks = document.querySelectorAll('.block')
  
  $blocks.forEach((block) => {
   let $status     = block.querySelector('.status')
   let $date       = block.querySelector('.date-js')
   let $assignee   = block.querySelector('.a_form')
   let $comment    = block.querySelector('.comment')
  
   if($comment){
        $comment.addEventListener('click', function(){
          //  let link = block.querySelector('.a-comment')
          //  let href = link.getAttribute('href')
          //   //  document.location=  href
          // //    console.log(href)
          //  window.history.replaceState('page2', 'Title',  href); 

         
            let comment =    block.querySelector('.cmtjs')
        
          if(comment.style.opacity == 0){
            comment.style.transition = ' all 2s';
            comment.style.opacity = 1;
            comment.classList.remove('comment-close')
            
            comment.classList.add('comment-open')
          } else if(comment.style.opacity == 1){
            comment.style.opacity = 0;
            
              comment.classList.add('comment-close')
              comment.classList.remove('comment-open')
            
              comment.style.transition = '0s';
            
          }
     
         
         


        })
   }
   

  if($search){
    $search.addEventListener('click' , function(event){
      event.preventDefault()
       console.log($status.innerText)
       console.log($date.innerText)
       console.log($assignee.innerText)
     // if(input.value == undefined){
     //   input.value = ""
     // }
     if(
       ($status.innerText === select_status.value && $date.innerText === input.value && $assignee.innerText  ===  select_assignee.value) || 
       ( input.value == "" && $status.innerText === select_status.value &&  select_assignee.value == "")  || 
       (input.value == "" && $status.innerText === select_status.value &&  $assignee.innerText === select_assignee.value) || 
       ($date.innerText === input.value && $status.innerText === select_status.value &&  select_assignee.value == ""))  {
 
 
       block.classList.add('show')
       block.classList.remove('hide')
     } else {
       block.classList.add('hide')
       block.classList.remove('show')
     }
    })
  }
  
   
    // console.log(select.value)
    
    // block.ondblclick = function(){
    //   let link = block.querySelector('.a-change')
    //   let href = link.getAttribute('href')

    //   console.log(block)
    //   console.log(href)
    //    document.location=  href

    //   // return false
    // }
    block.addEventListener('dblclick', function(){
       link = block.querySelector('.a-change')
       href = link.getAttribute('href')
       document.location=  href
      // window.history.pushState('page2', 'Title',  href)
    })

      })

//comment
//  $commentCommunuty =  document.querySelector('.community-name')  
//  if($commentCommunuty){
//   $commentCommunuty.classList.add("hide")   
//  }
 
};

