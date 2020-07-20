.class public final Ljaineel/videoeditor/view/ui/activity/HomeActivity;
.super Li/a/i/a/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljaineel/videoeditor/view/ui/activity/HomeActivity$a;,
        Ljaineel/videoeditor/view/ui/activity/HomeActivity$e;
    }
.end annotation


# static fields
.field public static U:Ljaineel/videoeditor/model/pojo/VideoListInfo; = null

.field public static V:Ljaineel/videoeditor/model/pojo/AudioListInfo; = null

.field public static W:I = 0x1

.field public static X:I = 0x0

.field public static Y:Z = true

.field public static Z:Li/a/j/a;


# instance fields
.field public M:Li/a/g/g;

.field public N:I

.field public O:I

.field public P:I

.field public Q:Landroid/os/Bundle;

.field public R:Z

.field public final S:J

.field public T:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Li/a/i/a/a/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->N:I

    iput v0, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->O:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->S:J

    return-void
.end method

.method public static final synthetic U()Ljava/lang/String;
    .registers 1

    const-string v0, "fromNotification"

    return-object v0
.end method

.method public static final synthetic V()Ljava/lang/String;
    .registers 1

    const-string v0, "homeposition"

    return-object v0
.end method

.method public static final synthetic W()Ljava/lang/String;
    .registers 1

    const-string v0, "positionPager"

    return-object v0
.end method

.method public static final Z(Landroid/app/Activity;II)V
    .registers 12

    const/4 v1, 0x0

    const/4 v7, -0x1

    const v2, 0x7f09000d

    const/4 v3, 0x0

    .line 1
    new-instance v8, Le/s/m;

    move-object v0, v8

    move v4, v7

    move v5, v7

    move v6, v7

    invoke-direct/range {v0 .. v7}, Le/s/m;-><init>(ZIZIIII)V

    const-string v0, "NavOptions.Builder().set…eFragment, false).build()"

    .line 2
    invoke-static {v8, v0}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0901cf

    if-nez p1, :cond_22

    invoke-static {p0, v0}, Le/b/k/r;->z(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object p0

    const p1, 0x7f0902ba

    const/4 p2, 0x0

    goto :goto_3b

    :cond_22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "homeposition"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "positionPager"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    sput p2, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->W:I

    .line 4
    invoke-static {p0, v0}, Le/b/k/r;->z(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object p0

    const p1, 0x7f0902bb

    move-object p2, v1

    :goto_3b
    invoke-virtual {p0, p1, p2, v8}, Landroidx/navigation/NavController;->c(ILandroid/os/Bundle;Le/s/m;)V

    return-void
.end method


# virtual methods
.method public T(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->T:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->T:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->T:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Le/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->T:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public final X(Landroid/net/Uri;I)V
    .registers 48

    move-object/from16 v1, p0

    const/4 v0, 0x0

    if-eqz p1, :cond_b4

    :try_start_5
    sget-object v2, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Z:Li/a/j/a;

    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Li/a/j/a;->g()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-static/range {p0 .. p1}, Li/a/h/c/d/d;->o(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a7

    if-eqz v2, :cond_b3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b3

    new-instance v3, Ljaineel/videoeditor/model/pojo/ConvertPojo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, -0x1

    const/16 v44, 0x7

    move-object v4, v3

    invoke-direct/range {v4 .. v44}, Ljaineel/videoeditor/model/pojo/ConvertPojo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;JLjava/lang/String;IILjava/lang/String;JJLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1
    iput-object v2, v3, Ljaineel/videoeditor/model/pojo/ConvertPojo;->g:Ljava/lang/String;

    .line 2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6c} :catch_af

    if-eqz v3, :cond_a3

    const-string v4, "path"

    :try_start_70
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    if-eqz v3, :cond_9f

    const-string v4, "isreturn"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_86

    const/4 v0, 0x1

    sput v0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->W:I

    invoke-static {v1, v2}, Ljaineel/videoeditor/view/ui/fragment/VideoDetailFragment;->B(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_b3

    :cond_86
    const/4 v2, 0x7

    sput v2, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->W:I

    iget-object v3, v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    if-eqz v3, :cond_9b

    const-string v0, "type"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    const v2, 0x7f0902b2

    invoke-virtual {v1, v0, v2}, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Y(Landroid/os/Bundle;I)V

    goto :goto_b3

    :cond_9b
    invoke-static {}, Lj/l/b/e;->e()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_9e} :catch_af

    throw v0

    :cond_9f
    :try_start_9f
    invoke-static {}, Lj/l/b/e;->e()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_af

    throw v0

    :cond_a3
    :try_start_a3
    invoke-static {}, Lj/l/b/e;->e()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_af

    throw v0

    :cond_a7
    :try_start_a7
    invoke-static {}, Lj/l/b/e;->e()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_af

    throw v0

    :cond_ab
    :try_start_ab
    invoke-static {}, Lj/l/b/e;->e()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_af

    throw v0

    :catch_af
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b3
    :goto_b3
    return-void

    :cond_b4
    const-string v2, "audioUri"

    .line 3
    invoke-static {v2}, Lj/l/b/e;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final Y(Landroid/os/Bundle;I)V
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f0901cf

    if-eqz p1, :cond_e

    invoke-static {p0, v1}, Le/b/k/r;->z(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v1

    .line 1
    invoke-virtual {v1, p2, p1, v0}, Landroidx/navigation/NavController;->c(ILandroid/os/Bundle;Le/s/m;)V

    goto :goto_15

    .line 2
    :cond_e
    invoke-static {p0, v1}, Le/b/k/r;->z(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2, v0, v0}, Landroidx/navigation/NavController;->c(ILandroid/os/Bundle;Le/s/m;)V

    :goto_15
    return-void
.end method

.method public final a0(I)V
    .registers 4

    iget v0, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->N:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_39

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    goto :goto_3f

    :cond_f
    const p1, 0x7f0902be

    goto :goto_3c

    :cond_13
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    if-nez p1, :cond_30

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    if-eqz p1, :cond_2c

    sget v0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->W:I

    invoke-virtual {p0, v0}, Li/a/i/a/a/a;->I(I)I

    move-result v0

    const-string v1, "positionPager"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_30

    :cond_2c
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_30
    :goto_30
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    const v0, 0x7f0902bb

    invoke-virtual {p0, p1, v0}, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Y(Landroid/os/Bundle;I)V

    goto :goto_3f

    :cond_39
    const p1, 0x7f0902ba

    :goto_3c
    invoke-virtual {p0, v0, p1}, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Y(Landroid/os/Bundle;I)V

    :goto_3f
    return-void
.end method

.method public final animateView(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_2f

    const/high16 v0, 0x42c80000  # 100.0f

    :try_start_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Le/n/a/a/c;

    invoke-direct {v0}, Le/n/a/a/c;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return-void

    :cond_2f
    const-string p1, "rootView"

    .line 1
    invoke-static {p1}, Lj/l/b/e;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b0(I)V
    .registers 9

    iput p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->N:I

    const-string v0, "mbinding!!.imgsetting"

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-ne p1, v1, :cond_18

    if-eqz v3, :cond_14

    iget-object v3, v3, Li/a/g/g;->q:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    goto :goto_20

    :cond_14
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_18
    if-eqz v3, :cond_1ad

    iget-object v3, v3, Li/a/g/g;->q:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_20
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    if-nez p1, :cond_38

    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz v3, :cond_34

    iget-object v3, v3, Li/a/g/g;->n:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f09004c

    goto :goto_47

    :cond_34
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_38
    if-ne p1, v0, :cond_53

    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz v3, :cond_4f

    iget-object v3, v3, Li/a/g/g;->n:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f09004e

    :goto_47
    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_53

    :cond_4f
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_53
    :goto_53
    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz v3, :cond_1a9

    iget-object v3, v3, Li/a/g/g;->u:Landroid/widget/TextView;

    const-string v4, "mbinding!!.txttitle"

    invoke-static {v3, v4}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getScaleX()F

    move-result v3

    const/high16 v5, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v5

    if-eqz v3, :cond_dc

    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz v3, :cond_d8

    iget-object v3, v3, Li/a/g/g;->u:Landroid/widget/TextView;

    const v6, 0x7f110021

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz v3, :cond_d4

    iget-object v3, v3, Li/a/g/g;->u:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v6, 0x42dc0000  # 110.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setX(F)V

    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz v3, :cond_d0

    iget-object v3, v3, Li/a/g/g;->u:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x3fa66666  # 1.3f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz v3, :cond_cc

    iget-object v3, v3, Li/a/g/g;->u:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz v3, :cond_c8

    iget-object v3, v3, Li/a/g/g;->u:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x41f00000  # 30.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-wide v4, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->S:J

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Ljaineel/videoeditor/view/ui/activity/HomeActivity$f;

    invoke-direct {v4}, Ljaineel/videoeditor/view/ui/activity/HomeActivity$f;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_dc

    :cond_c8
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_cc
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_d0
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_d4
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_d8
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_dc
    :goto_dc
    iget-object v3, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz v3, :cond_1a5

    iget-object v3, v3, Li/a/g/g;->s:Landroidx/appcompat/widget/Toolbar;

    const v4, 0x106000d

    invoke-static {p0, v4}, Le/h/f/a;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const v3, 0x7f0601ab

    if-nez p1, :cond_fc

    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_f8

    iget-object p1, p1, Li/a/g/g;->u:Landroid/widget/TextView;

    goto :goto_106

    :cond_f8
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_fc
    if-ne p1, v0, :cond_10f

    sget p1, Li/a/d;->txttitle:I

    invoke-virtual {p0, p1}, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->T(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :goto_106
    invoke-static {p0, v3}, Le/h/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1a4

    :cond_10f
    if-ne p1, v1, :cond_1a4

    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_1a0

    iget-object p1, p1, Li/a/g/g;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x428c0000  # 70.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3fc00000  # 1.5f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v0, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->S:J

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Ljaineel/videoeditor/view/ui/activity/HomeActivity$g;

    invoke-direct {v0}, Ljaineel/videoeditor/view/ui/activity/HomeActivity$g;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    sget-object p1, Ljaineel/videoeditor/view/application/ApplicationLoader;->i:Ljaineel/videoeditor/view/application/ApplicationLoader;

    .line 1
    sget-boolean p1, Ljaineel/videoeditor/view/application/ApplicationLoader;->e:Z

    if-eqz p1, :cond_14e

    .line 2
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_14a

    iget-object p1, p1, Li/a/g/g;->u:Landroid/widget/TextView;

    invoke-static {p0, v3}, Le/h/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_15b

    :cond_14a
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_14e
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_19c

    iget-object p1, p1, Li/a/g/g;->u:Landroid/widget/TextView;

    const v0, 0x7f060034

    invoke-static {p0, v0}, Le/h/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    :goto_15b
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_198

    iget-object p1, p1, Li/a/g/g;->u:Landroid/widget/TextView;

    const v0, 0x7f1101db

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Ljaineel/videoeditor/view/application/ApplicationLoader;->i:Ljaineel/videoeditor/view/application/ApplicationLoader;

    .line 3
    sget-boolean p1, Ljaineel/videoeditor/view/application/ApplicationLoader;->e:Z

    if-eqz p1, :cond_186

    .line 4
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_182

    iget-object p1, p1, Li/a/g/g;->s:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x106000e

    invoke-static {p0, v0}, Le/h/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_190

    :cond_182
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_186
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_194

    iget-object p1, p1, Li/a/g/g;->s:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v3}, Le/h/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    :goto_190
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_1a4

    :cond_194
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_198
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_19c
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_1a0
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_1a4
    :goto_1a4
    return-void

    :cond_1a5
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_1a9
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2

    :cond_1ad
    invoke-static {}, Lj/l/b/e;->e()V

    throw v2
.end method

.method public onBackPressed()V
    .registers 2

    sget-boolean v0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Y:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_d

    .line 1
    :cond_8
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    :goto_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Li/a/i/a/a/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    iput p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->N:I

    .line 1
    sget-object p1, Le/k/e;->b:Le/k/d;

    const v0, 0x7f0c001f

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Le/k/e;->c(Le/k/d;Landroid/view/ViewGroup;II)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    .line 3
    check-cast p1, Li/a/g/g;

    iput-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    .line 4
    new-instance p1, Li/a/h/c/h/a/b;

    new-instance v0, Li/a/i/a/a/b;

    invoke-direct {v0, p0}, Li/a/i/a/a/b;-><init>(Li/a/i/a/a/a;)V

    invoke-direct {p1, p0, v0}, Li/a/h/c/h/a/b;-><init>(Landroid/app/Activity;Li/a/h/c/h/a/b$b;)V

    sput-object p1, Li/a/i/a/a/a;->G:Li/a/h/c/h/a/b;

    .line 5
    sget-object p1, Ljaineel/videoeditor/view/application/ApplicationLoader;->i:Ljaineel/videoeditor/view/application/ApplicationLoader;

    .line 6
    sget-boolean p1, Ljaineel/videoeditor/view/application/ApplicationLoader;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_49

    .line 7
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_45

    iget-object p1, p1, Li/a/g/g;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f060034

    goto :goto_52

    :cond_45
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_49
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_251

    iget-object p1, p1, Li/a/g/g;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0601ab

    :goto_52
    invoke-static {p0, v1}, Le/h/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
new-instance p1, Ljaineel/videoeditor/model/pojo/KingPojo;
const/4 v1, 0x3
const/4 v3, 0x0
invoke-direct {p1, v3, v3, v1}, Ljaineel/videoeditor/model/pojo/KingPojo;-><init>(IZI)V
iput-object p1, p0, Li/a/i/a/a/a;->z:Ljaineel/videoeditor/model/pojo/KingPojo;
    .line 8
    iget-object p1, p0, Li/a/i/a/a/a;->z:Ljaineel/videoeditor/model/pojo/KingPojo;

    if-eqz p1, :cond_72

    .line 9
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_6e

    iget-object p1, p1, Li/a/g/g;->p:Landroid/widget/ImageView;

    const-string v1, "mbinding!!.imgpremium"

    invoke-static {p1, v1}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_72

    :cond_6e
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_72
    :goto_72
    const p1, 0x7f0901cf

    invoke-static {p0, p1}, Le/b/k/r;->z(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "intent"

    invoke-static {v1, v3}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    .line 10
    sget-object v1, Ljaineel/videoeditor/view/application/ApplicationLoader;->i:Ljaineel/videoeditor/view/application/ApplicationLoader;

    .line 11
    sget-object v1, Ljaineel/videoeditor/view/application/ApplicationLoader;->h:Ljaineel/videoeditor/view/application/ApplicationLoader;

    if-eqz v1, :cond_24d

    .line 12
    invoke-static {v1}, Le/p/y;->b(Landroid/app/Application;)Le/p/y;

    move-result-object v1

    const-class v4, Li/a/j/a;

    invoke-virtual {v1, v4}, Le/p/y;->a(Ljava/lang/Class;)Le/p/x;

    move-result-object v1

    const-string v4, "ViewModelProvider.Androi…ss.java\n                )"

    invoke-static {v1, v4}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Li/a/j/a;

    .line 13
    sput-object v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Z:Li/a/j/a;

    .line 14
    iput-object p0, v1, Li/a/j/a;->j:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Li/a/j/a;->storageTask()V

    sget-object v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Z:Li/a/j/a;

    if-eqz v1, :cond_249

    .line 16
    iget-object v1, v1, Li/a/j/a;->i:Le/p/p;

    if-eqz v1, :cond_245

    .line 17
    new-instance v4, Ljaineel/videoeditor/view/ui/activity/HomeActivity$a;

    invoke-direct {v4, p0}, Ljaineel/videoeditor/view/ui/activity/HomeActivity$a;-><init>(Ljaineel/videoeditor/view/ui/activity/HomeActivity;)V

    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/LiveData;->e(Le/p/k;Le/p/q;)V

    sget-object v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Z:Li/a/j/a;

    if-eqz v1, :cond_241

    .line 18
    iget-object v1, v1, Li/a/j/a;->g:Le/p/p;

    if-eqz v1, :cond_23d

    .line 19
    new-instance v4, Ljaineel/videoeditor/view/ui/activity/HomeActivity$e;

    invoke-direct {v4, p0}, Ljaineel/videoeditor/view/ui/activity/HomeActivity$e;-><init>(Ljaineel/videoeditor/view/ui/activity/HomeActivity;)V

    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/LiveData;->e(Le/p/k;Le/p/q;)V

    sget-object v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Z:Li/a/j/a;

    if-eqz v1, :cond_239

    .line 20
    iget-object v1, v1, Li/a/j/a;->h:Le/p/p;

    if-eqz v1, :cond_235

    .line 21
    new-instance v4, Ljaineel/videoeditor/view/ui/activity/HomeActivity$e;

    invoke-direct {v4, p0}, Ljaineel/videoeditor/view/ui/activity/HomeActivity$e;-><init>(Ljaineel/videoeditor/view/ui/activity/HomeActivity;)V

    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/LiveData;->e(Le/p/k;Le/p/q;)V

    iget-object v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    if-eqz v1, :cond_200

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_e4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_e5

    :cond_e4
    move-object v1, v0

    :goto_e5
    const-string v4, "android.intent.action.SEND"

    invoke-static {v1, v4}, Lj/l/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "audio/"

    const-string v5, "video/"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_143

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v3}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.net.Uri"

    const-string v8, "android.intent.extra.STREAM"

    if-eqz p1, :cond_11d

    invoke-static {p1, v5, v2, v6}, Le/x/t;->j1(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-ne p1, v7, :cond_11d

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_117

    check-cast p1, Landroid/net/Uri;

    goto :goto_177

    :cond_117
    new-instance p1, Lj/f;

    invoke-direct {p1, v1}, Lj/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11d
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v3}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_200

    invoke-static {p1, v4, v2, v6}, Le/x/t;->j1(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-ne p1, v7, :cond_200

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_13d

    check-cast p1, Landroid/net/Uri;

    goto :goto_1a0

    :cond_13d
    new-instance p1, Lj/f;

    invoke-direct {p1, v1}, Lj/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_14e

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_14f

    :cond_14e
    move-object v1, v0

    :goto_14f
    const-string v8, "android.intent.action.VIEW"

    invoke-static {v1, v8}, Lj/l/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v3}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_180

    invoke-static {p1, v5, v2, v6}, Le/x/t;->j1(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-ne p1, v7, :cond_180

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v3}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_17c

    :goto_177
    invoke-virtual {p0, p1, v2}, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->X(Landroid/net/Uri;I)V

    goto/16 :goto_200

    :cond_17c
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_180
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v3}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_200

    invoke-static {p1, v4, v2, v6}, Le/x/t;->j1(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-ne p1, v7, :cond_200

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v3}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1a4

    :goto_1a0
    invoke-virtual {p0, p1, v7}, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->X(Landroid/net/Uri;I)V

    goto :goto_200

    :cond_1a4
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    .line 22
    :cond_1a8
    iget-object v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    if-eqz v1, :cond_200

    const-string v2, "homeposition"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->O:I

    iget-object v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    if-eqz v1, :cond_1fc

    const-string v2, "positionPager"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->P:I

    iget-object v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    if-eqz v1, :cond_1f8

    const-string v2, "fromNotification"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1db

    iget-object v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Q:Landroid/os/Bundle;

    if-eqz v1, :cond_1d7

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->R:Z

    goto :goto_1db

    :cond_1d7
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_1db
    :goto_1db
    iget-boolean v1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->R:Z

    if-eqz v1, :cond_1f2

    .line 23
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, p1}, Le/b/k/r;->z(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object p1

    const v1, 0x7f0902bd

    .line 24
    invoke-virtual {p1, v1, v3, v0}, Landroidx/navigation/NavController;->c(ILandroid/os/Bundle;Le/s/m;)V

    goto :goto_200

    .line 25
    :cond_1f2
    iget p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->O:I

    invoke-virtual {p0, p1}, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->a0(I)V

    goto :goto_200

    :cond_1f8
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_1fc
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    .line 26
    :cond_200
    :goto_200
    sget p1, Li/a/d;->imgsetting:I

    invoke-virtual {p0, p1}, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->T(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity$b;

    invoke-direct {v1, p0}, Ljaineel/videoeditor/view/ui/activity/HomeActivity$b;-><init>(Ljaineel/videoeditor/view/ui/activity/HomeActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_231

    iget-object p1, p1, Li/a/g/g;->p:Landroid/widget/ImageView;

    new-instance v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity$c;

    invoke-direct {v1, p0}, Ljaineel/videoeditor/view/ui/activity/HomeActivity$c;-><init>(Ljaineel/videoeditor/view/ui/activity/HomeActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_22d

    iget-object p1, p1, Li/a/g/g;->n:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v0, Ljaineel/videoeditor/view/ui/activity/HomeActivity$d;

    invoke-direct {v0, p0}, Ljaineel/videoeditor/view/ui/activity/HomeActivity$d;-><init>(Ljaineel/videoeditor/view/ui/activity/HomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V

    return-void

    :cond_22d
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_231
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_235
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_239
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_23d
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_241
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_245
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_249
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    .line 27
    :cond_24d
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    .line 28
    :cond_251
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0
.end method

.method public onDestroy()V
    .registers 2

    :try_start_0
    invoke-static {}, Lm/a/a/c;->b()Lm/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm/a/a/c;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lm/a/a/c;->b()Lm/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm/a/a/c;->m(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_16
    invoke-super {p0}, Li/a/i/a/a/a;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    if-eqz p3, :cond_17

    invoke-super {p0, p1, p2, p3}, Le/m/d/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    sget-object v1, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->Z:Li/a/j/a;

    if-eqz v1, :cond_16

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1, p2, p3}, Li/a/j/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_16

    :cond_12
    invoke-static {}, Lj/l/b/e;->e()V

    throw v0

    :cond_16
    :goto_16
    return-void

    :cond_17
    const-string p1, "grantResults"

    .line 1
    invoke-static {p1}, Lj/l/b/e;->f(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const-string p1, "permissions"

    invoke-static {p1}, Lj/l/b/e;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Le/b/k/h;->onStart()V

    :try_start_3
    invoke-static {}, Lm/a/a/c;->b()Lm/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm/a/a/c;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lm/a/a/c;->b()Lm/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm/a/a/c;->k(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_19
    return-void
.end method

.method public final updateData(Li/a/h/c/e/c;)V
    .registers 5
    .annotation runtime Lm/a/a/m;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_60

    .line 1
    iget-boolean p1, p1, Li/a/h/c/e/c;->a:Z

    if-eqz p1, :cond_5f

    .line 2
    :try_start_7
    new-instance p1, Ljaineel/videoeditor/model/pojo/KingPojo;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v1}, Ljaineel/videoeditor/model/pojo/KingPojo;-><init>(IZI)V

    .line 3
    iput-object p1, p0, Li/a/i/a/a/a;->z:Ljaineel/videoeditor/model/pojo/KingPojo;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p1, Ljaineel/videoeditor/model/pojo/KingPojo;->f:Z

    .line 5
    iget-object p1, p0, Li/a/i/a/a/a;->y:Ljaineel/videoeditor/Databse/VideoConverterDatabase;

    if-eqz p1, :cond_55

    .line 6
    invoke-virtual {p1}, Ljaineel/videoeditor/Databse/VideoConverterDatabase;->i()Li/a/h/a/c;

    move-result-object p1

    .line 7
    iget-object v1, p0, Li/a/i/a/a/a;->z:Ljaineel/videoeditor/model/pojo/KingPojo;

    if-eqz v1, :cond_51

    .line 8
    check-cast p1, Li/a/h/a/d;

    .line 9
    iget-object v2, p1, Li/a/h/a/d;->a:Le/u/e;

    invoke-virtual {v2}, Le/u/e;->b()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_5b

    :try_start_26
    iget-object v2, p1, Li/a/h/a/d;->b:Le/u/c;

    invoke-virtual {v2, v1}, Le/u/c;->e(Ljava/lang/Object;)V

    iget-object v1, p1, Li/a/h/a/d;->a:Le/u/e;

    invoke-virtual {v1}, Le/u/e;->g()V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_4a

    :try_start_30
    iget-object p1, p1, Li/a/h/a/d;->a:Le/u/e;

    invoke-virtual {p1}, Le/u/e;->d()V

    .line 10
    iget-object p1, p0, Ljaineel/videoeditor/view/ui/activity/HomeActivity;->M:Li/a/g/g;

    if-eqz p1, :cond_46

    iget-object p1, p1, Li/a/g/g;->p:Landroid/widget/ImageView;

    const-string v0, "mbinding!!.imgpremium"

    invoke-static {p1, v0}, Lj/l/b/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5f

    :cond_46
    invoke-static {}, Lj/l/b/e;->e()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_49} :catch_5b

    throw v0

    :catchall_4a
    move-exception v0

    .line 11
    :try_start_4b
    iget-object p1, p1, Li/a/h/a/d;->a:Le/u/e;

    invoke-virtual {p1}, Le/u/e;->d()V

    throw v0

    .line 12
    :cond_51
    invoke-static {}, Lj/l/b/e;->e()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_54} :catch_5b

    throw v0

    :cond_55
    :try_start_55
    const-string p1, "videoToMp3Database"

    .line 13
    invoke-static {p1}, Lj/l/b/e;->g(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_5b

    throw v0

    :catch_5b
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    const-string p1, "eventPremimPurchase"

    .line 15
    invoke-static {p1}, Lj/l/b/e;->f(Ljava/lang/String;)V

    throw v0
.end method
