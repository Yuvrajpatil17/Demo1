import { LightningElement } from 'lwc';
import getAccount from '@salesforce/apex/SearchAccountInfo.getAccountDetails'

export default class Searchaccount extends LightningElement {
    accountName;
    accountPhoe;
    billingStreet;
    billingCity;
    billingState;
    billingZipCde;

    handleOnChangeAccountName(event){
        this.accountName=event.target.value;
    
    }
    handleOnChangeAccountPhone(event){
        this.accountPhone=event.target.value;
        
    }
    handleOnChangeAccountBillingStreet(event){
        this.billingStreet=event.target.value;
    
    }
    OnChangeAccountBillingCity(event){
        this.billingCity=event.target.value;
        
    }
    handleOnChangeAccountBillingState(event){
        this.billingState=event.target.value;
        alert('Account State'+this.billingState);
    }
    handleOnChangeAccountBilligZipCode(event){
        this.billingZipCde=event.target.value;
        
    }
    initiateSearch(event){
        alert('yes, I am ready to search');
        getAccount({actName:this.accountName}).
        then(results=>{this.dispatchEvent(new CustomEvent('getaccountdata',{detail:results}));
        
        }).catch(error=>{
            console.log(error)
        });
    }
}