package contact;

public class Contact {
   private String clientName;
   private String contactName;
   private String contactContents;
   private String contactStart;
   private String contactEnd;
   private String StaffName;

    public String getContactContents() {
        return contactContents;
    }

    public void setContactContents(String contactContents) {
        this.contactContents = contactContents;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactStart() {
        return contactStart;
    }

    public void setContactStart(String contactStart) {
        this.contactStart = contactStart;
    }

    public String getContactEnd() {
        return contactEnd;
    }

    public void setContactEnd(String contactEnd) {
        this.contactEnd = contactEnd;
    }

    public String getStaffName() {
        return StaffName;
    }

    public void setStaffName(String staffName) {
        StaffName = staffName;
    }
}
