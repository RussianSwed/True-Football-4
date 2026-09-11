.class Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$5;
.super Ljava/lang/Object;
.source "ClubStaffFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->initPeopleToHireList(Landroid/view/View;)V

    return-void
.end method
