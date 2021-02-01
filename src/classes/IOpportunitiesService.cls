public interface IOpportunitiesService {
    
    void applyDiscounts(Set<ID> opportunityIds, Decimal discountPercentage);
 
    Set<Id> createInvoices(Set<ID> opportunityIds, Decimal discountPercentage);
 
    Id submitInvoicingJob();
}