.class Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;
.super Ljava/lang/Object;
.source "MessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Message;Ljava/util/List;Lpl/mkrstudio/truefootball3/adapters/MailAdapter;Lpl/mkrstudio/truefootball3/objects/UserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;Lpl/mkrstudio/truefootball3/adapters/MailAdapter;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mailAdapter",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->val$mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 52
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->msgs:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 53
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->msgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->val$mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/adapters/MailAdapter;->setSelectedPosition(I)V

    .line 55
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->msgs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Message;

    iput-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    .line 56
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;->setRead(Z)V

    .line 57
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->val$mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/adapters/MailAdapter;->setRead(I)V

    .line 58
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->val$context:Landroid/content/Context;

    check-cast p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->updateNumberOfUnreadMessages()V

    .line 59
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->showMessage()V

    :cond_0
    return-void
.end method
