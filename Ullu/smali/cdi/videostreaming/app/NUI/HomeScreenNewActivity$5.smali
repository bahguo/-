# classes.dex

.class Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity$5;
.super Lcom/android/b/a/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;


# direct methods
.method constructor <init>(Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/b/n$b;Lcom/android/b/n$a;)V
    .registers 13

    .line 357
    iput-object p1, p0, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity$5;->a:Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/b/a/j;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/b/n$b;Lcom/android/b/n$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/b/i;)Lcom/android/b/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/b/i;",
            ")",
            "Lcom/android/b/n<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity$5;->a:Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;

    iget v1, p1, Lcom/android/b/i;->a:I

    invoke-static {v0, v1}, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;->a(Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;I)I

    .line 371
    invoke-super {p0, p1}, Lcom/android/b/a/j;->a(Lcom/android/b/i;)Lcom/android/b/n;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/android/b/s;)Lcom/android/b/s;
    .registers 5

    .line 361
    :try_start_0
    iget-object v0, p0, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity$5;->a:Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;

    iget-object v1, p1, Lcom/android/b/s;->a:Lcom/android/b/i;

    iget v1, v1, Lcom/android/b/i;->a:I

    invoke-static {v0, v1}, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;->a(Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;I)I

    const-string v0, "ERROR STATUS"

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity$5;->a:Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;

    invoke-static {v2}, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;->a(Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2d

    .line 364
    :catch_26
    iget-object v0, p0, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity$5;->a:Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;->a(Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;I)I

    .line 366
    :goto_2d
    invoke-super {p0, p1}, Lcom/android/b/a/j;->b(Lcom/android/b/s;)Lcom/android/b/s;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/b/a;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "authorization"
const-string v1, "x-authorization"
    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity$5;->a:Lcdi/videostreaming/app/NUI/HomeScreenNew/HomeScreenNewActivity;

    invoke-static {v3}, Lcdi/videostreaming/app/CommonUtils/OauthUtils/a;->a(Landroid/content/Context;)Lcdi/videostreaming/app/CommonUtils/OauthUtils/Token;

    move-result-object v3

    invoke-virtual {v3}, Lcdi/videostreaming/app/CommonUtils/OauthUtils/Token;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
