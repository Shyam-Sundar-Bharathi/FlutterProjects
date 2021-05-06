String lcm (String userInput) {
  if(userInput == "")
    return '0';
  var sArray = userInput.split(",");
  var length = sArray.length;
  var iArray = [];
  var lcm;
  var lcm_found = false;
  int iter= 0;
  for(iter=0; iter<sArray.length; iter++)
        iArray.add(int.parse(sArray[iter]));
  iArray.sort();
  lcm = iArray[length-1];
  iter = 0;
  while(!lcm_found)
      {
        iter++;
        for(int i=0; i<length-1; i++)
          {
            if(lcm % iArray[i] != 0)
              {
                lcm+=iArray[length-1];
                break;
              }

          }
        if(lcm == iArray[length-1]*iter)
          lcm_found = true;
      }
      return lcm.toString();
}

String hcf (String userInput) {
  if(userInput == "")
    return '0';
  var sArray = userInput.split(",");
  var length = sArray.length;
  var iArray = [];
  var hcf;
  var potDivisers = [1];
  var hcf_found = false;
  int iter= 0;
  for(iter=0; iter<sArray.length; iter++)
  {
    iArray.add(int.parse(sArray[iter]));
  }
  iArray.sort();
  hcf = iArray[0];
  for(int i=2; i <= hcf/2 ; i++)
    {
      if(hcf % i == 0)
        potDivisers.add(i);
    }
  potDivisers.add(hcf);
  iter = potDivisers.length-1;
  while(!hcf_found)
    {
      hcf = potDivisers[iter];
      for(int i=1; i<length; i++)
          {
            if(iArray[i] % hcf != 0)
              {
                hcf=potDivisers[iter-1];
              }
          }
      iter--;
      if(hcf == potDivisers[iter+1])
        hcf_found = true;
    }
    return hcf.toString();
}