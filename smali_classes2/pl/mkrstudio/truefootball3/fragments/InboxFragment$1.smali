.class Lpl/mkrstudio/truefootball3/fragments/InboxFragment$1;
.super Ljava/lang/Object;
.source "InboxFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->sortMessages(Lpl/mkrstudio/truefootball3/objects/UserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/InboxFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/InboxFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 135
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Message;

    .line 136
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Message;

    .line 137
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Message;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Message;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
