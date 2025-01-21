terraform { 
  cloud { 
    
    organization = "store-local-state-file" 

    workspaces { 
      name = "store-state-file" 
    } 
  } 
}