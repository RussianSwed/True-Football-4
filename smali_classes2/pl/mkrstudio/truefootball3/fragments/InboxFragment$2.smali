.class Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;
.super Ljava/lang/Object;
.source "InboxFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->attachListener(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/InboxFragment;Lpl/mkrstudio/truefootball3/objects/UserData;)V
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

    .line 146
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 149
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/MailAdapter;->setSelectedPosition(I)V

    .line 151
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 p1, 0x1

    .line 152
    invoke-virtual {v2, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setRead(Z)V

    .line 153
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->updateNumberOfUnreadMessages()V

    .line 155
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->getMessages()Ljava/util/List;

    move-result-object v3

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    iget-object v4, p2, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Message;Ljava/util/List;Lpl/mkrstudio/truefootball3/adapters/MailAdapter;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    .line 156
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->show()V

    .line 187
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/MailAdapter;->setRead(I)V

    return-void
.end method
