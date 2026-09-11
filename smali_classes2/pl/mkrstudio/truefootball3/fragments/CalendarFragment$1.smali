.class Lpl/mkrstudio/truefootball3/fragments/CalendarFragment$1;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;->renderCalendar(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;

.field final synthetic val$match:Lpl/mkrstudio/truefootball3/objects/Match;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$match"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment$1;->val$match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 87
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment$1;->val$match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Match;)V

    .line 88
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->show()V

    return-void
.end method
