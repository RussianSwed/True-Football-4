.class Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;
.super Ljava/lang/Object;
.source "TeamIntegrationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ud"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 110
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->dinnerRB:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    move-result-object v0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v3

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v4

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dinner(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Landroid/content/Context;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->partyRB:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    move-result-object v0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v3

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v4

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->party(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Landroid/content/Context;)V

    .line 112
    :cond_1
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->integrated:Z

    .line 113
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->dismiss()V

    return-void
.end method
