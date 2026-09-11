.class Lcom/firebase/simplelogin/SimpleLogin$FetchTask;
.super Landroid/os/AsyncTask;
.source "SimpleLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/simplelogin/SimpleLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private handler:Lcom/firebase/simplelogin/RequestHandler;

.field final synthetic this$0:Lcom/firebase/simplelogin/SimpleLogin;


# direct methods
.method public constructor <init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/RequestHandler;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$FetchTask;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    .line 756
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 757
    iput-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$FetchTask;->handler:Lcom/firebase/simplelogin/RequestHandler;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 751
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/firebase/simplelogin/SimpleLogin$FetchTask;->doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 762
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 763
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 766
    :try_start_0
    new-instance p1, Lcom/firebase/simplelogin/JsonBasicResponseHandler;

    invoke-direct {p1}, Lcom/firebase/simplelogin/JsonBasicResponseHandler;-><init>()V

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 769
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 751
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/firebase/simplelogin/SimpleLogin$FetchTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 2

    .line 777
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 779
    iget-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$FetchTask;->handler:Lcom/firebase/simplelogin/RequestHandler;

    sget-object v1, Lcom/firebase/simplelogin/enums/Error;->Unknown:Lcom/firebase/simplelogin/enums/Error;

    invoke-interface {p1, v1, v0}, Lcom/firebase/simplelogin/RequestHandler;->handle(Lcom/firebase/simplelogin/enums/Error;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/firebase/simplelogin/SimpleLogin$FetchTask;->handler:Lcom/firebase/simplelogin/RequestHandler;

    invoke-interface {v1, v0, p1}, Lcom/firebase/simplelogin/RequestHandler;->handle(Lcom/firebase/simplelogin/enums/Error;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
