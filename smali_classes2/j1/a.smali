.class public Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj1/a$a;
    }
.end annotation


# static fields
.field private static p:I = -0x1


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lj1/b;

.field private final c:Landroid/os/Handler;

.field private final d:Lj1/f;

.field private final e:Lj1/f;

.field private final f:Lj1/m;

.field private final g:Lj1/d;

.field private final h:Landroid/content/BroadcastReceiver;

.field protected i:Li1/c;

.field private j:I

.field private k:Z

.field private l:I

.field private m:Lj1/a$a;

.field private n:Landroid/view/WindowManager$LayoutParams;

.field private o:Lj1/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lj1/b;Lj1/a$a;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lj1/a;-><init>(Landroid/app/Activity;Lj1/b;Lj1/a$a;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lj1/b;Lj1/a$a;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj1/f;

    const-string v1, "Client"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lj1/f;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lj1/a;->d:Lj1/f;

    new-instance v0, Lj1/f;

    const-string v1, "Service"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lj1/f;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lj1/a;->e:Lj1/f;

    new-instance v0, Lj1/g;

    invoke-direct {v0, p0}, Lj1/g;-><init>(Lj1/a;)V

    iput-object v0, p0, Lj1/a;->h:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput v1, p0, Lj1/a;->j:I

    iput-boolean v1, p0, Lj1/a;->k:Z

    iput v1, p0, Lj1/a;->l:I

    iput-object p1, p0, Lj1/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lj1/a;->b:Lj1/b;

    iput-object p3, p0, Lj1/a;->m:Lj1/a$a;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lj1/a;->c:Landroid/os/Handler;

    new-instance p3, Lj1/m;

    iget-object p4, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {p4}, Lj1/a$a;->a(Lj1/a$a;)Ljava/lang/String;

    move-result-object p4

    const/16 v2, 0x41

    invoke-direct {p3, p1, v2, p2, p4}, Lj1/m;-><init>(Landroid/content/Context;ILandroid/os/Handler;Ljava/lang/String;)V

    iput-object p3, p0, Lj1/a;->f:Lj1/m;

    iget-object p3, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {p3}, Lj1/a$a;->a(Lj1/a$a;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lj1/d;->g(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lj1/d;

    move-result-object p2

    iput-object p2, p0, Lj1/a;->g:Lj1/d;

    invoke-virtual {p2, p0}, Lj1/d;->h(Lj1/a;)Li1/c;

    move-result-object p2

    iput-object p2, p0, Lj1/a;->i:Li1/c;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p3, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {p3}, Lj1/a$a;->a(Lj1/a$a;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget p2, Lj1/a;->p:I

    if-gtz p2, :cond_0

    invoke-direct {p0, p1}, Lj1/a;->H(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lj1/a;->D()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lj1/a;->s()V

    :cond_1
    return-void
.end method

.method private final A()Z
    .locals 0

    iget-object p0, p0, Lj1/a;->i:Li1/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static B(I)I
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_0

    shl-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final E(I)V
    .locals 3

    iget v0, p0, Lj1/a;->l:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lj1/a;->l:I

    iget-object p0, p0, Lj1/a;->b:Lj1/b;

    and-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {p0, v1, p1}, Lj1/b;->e(ZZ)V

    :cond_2
    return-void
.end method

.method private final H(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {p0}, Lj1/a$a;->a(Lj1/a$a;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj1/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 p1, 0x80

    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "service.api.version"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lj1/a;->p:I

    return-void

    :cond_1
    :goto_0
    sput p1, Lj1/a;->p:I

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "app://"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cv"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lj1/a;)Lj1/m;
    .locals 0

    iget-object p0, p0, Lj1/a;->f:Lj1/m;

    return-object p0
.end method

.method static synthetic e(Lj1/a;)Lj1/d;
    .locals 0

    iget-object p0, p0, Lj1/a;->g:Lj1/d;

    return-object p0
.end method

.method static synthetic g(Lj1/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lj1/a;->H(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic h(Lj1/a;)I
    .locals 0

    iget p0, p0, Lj1/a;->j:I

    return p0
.end method

.method static synthetic i(Lj1/a;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lj1/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic l(Lj1/a;)I
    .locals 0

    iget p0, p0, Lj1/a;->l:I

    return p0
.end method

.method static synthetic m(Lj1/a;)Lj1/b;
    .locals 0

    iget-object p0, p0, Lj1/a;->b:Lj1/b;

    return-object p0
.end method

.method static synthetic n(Lj1/a;)Lj1/f;
    .locals 0

    iget-object p0, p0, Lj1/a;->e:Lj1/f;

    return-object p0
.end method

.method static synthetic o(Lj1/a;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lj1/a;->b:Lj1/b;

    instance-of v1, v0, Lj1/c;

    if-eqz v1, :cond_3

    check-cast v0, Lj1/c;

    const-string v1, "minus_one_thumbnail_image_960_540"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "minus_one_product_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lj1/c;->c(Ljava/lang/String;Landroid/graphics/drawable/Icon;)V

    :cond_0
    const-string v1, "overlay_animation_complete"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lj1/c;->b()V

    :cond_1
    const-string v1, "google_overlay_icon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lj1/c;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    const-string v1, "initiate_overlay_switch"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lj1/c;->d()V

    :cond_3
    const-string v0, "service_status"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_4

    invoke-direct {p0, p1}, Lj1/a;->E(I)V

    :cond_4
    iget-object p0, p0, Lj1/a;->b:Lj1/b;

    instance-of p1, p0, Lj1/k;

    if-eqz p1, :cond_5

    check-cast p0, Lj1/k;

    invoke-interface {p0}, Lj1/k;->a()V

    :cond_5
    return-void
.end method

.method static synthetic p(Lj1/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj1/a;->E(I)V

    return-void
.end method

.method private final q(Z)V
    .locals 2

    iget-boolean v0, p0, Lj1/a;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj1/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lj1/a;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj1/a;->k:Z

    iget-object v0, p0, Lj1/a;->f:Lj1/m;

    invoke-virtual {v0}, Lj1/m;->a()V

    iget-object v0, p0, Lj1/a;->o:Lj1/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj1/j;->T()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj1/a;->o:Lj1/j;

    :cond_1
    iget-object v0, p0, Lj1/a;->g:Lj1/d;

    invoke-virtual {v0, p0, p1}, Lj1/d;->j(Lj1/a;Z)V

    return-void
.end method

.method private final r(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lj1/a;->z()V

    return-void

    :cond_1
    iget-object p1, p0, Lj1/a;->i:Li1/c;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lj1/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    invoke-interface {p1, v0}, Li1/c;->m(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lj1/a;->i:Li1/c;

    :cond_2
    return-void
.end method

.method private final z()V
    .locals 4

    iget-object v0, p0, Lj1/a;->i:Li1/c;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lj1/a;->o:Lj1/j;

    if-nez v0, :cond_0

    new-instance v0, Lj1/j;

    invoke-direct {v0}, Lj1/j;-><init>()V

    iput-object v0, p0, Lj1/a;->o:Lj1/j;

    :cond_0
    iget-object v0, p0, Lj1/a;->o:Lj1/j;

    invoke-virtual {v0, p0}, Lj1/j;->S(Lj1/a;)V

    sget v0, Lj1/a;->p:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lj1/a;->i:Li1/c;

    iget-object v1, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lj1/a;->o:Lj1/j;

    iget-object v3, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v3}, Lj1/a$a;->b(Lj1/a$a;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Li1/c;->e(Landroid/view/WindowManager$LayoutParams;Li1/e;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_params"

    iget-object v2, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configuration"

    iget-object v2, p0, Lj1/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "client_options"

    iget-object v2, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v2}, Lj1/a$a;->b(Lj1/a$a;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v1}, Lj1/a$a;->c(Lj1/a$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "partner_overlay_icon"

    iget-object v2, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v2}, Lj1/a$a;->c(Lj1/a$a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "google_overlay_is_default"

    iget-object v2, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v2}, Lj1/a$a;->e(Lj1/a$a;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "partner_overlay_product_name"

    iget-object v2, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v2}, Lj1/a$a;->d(Lj1/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lj1/a;->i:Li1/c;

    iget-object v2, p0, Lj1/a;->o:Lj1/j;

    invoke-interface {v1, v0, v2}, Li1/c;->q(Landroid/os/Bundle;Li1/e;)V

    :goto_0
    sget v0, Lj1/a;->p:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    iget v0, p0, Lj1/a;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object p0, p0, Lj1/a;->i:Li1/c;

    invoke-interface {p0}, Li1/c;->m()V

    return-void

    :cond_3
    iget-object p0, p0, Lj1/a;->i:Li1/c;

    invoke-interface {p0}, Li1/c;->l()V

    return-void

    :cond_4
    iget-object v0, p0, Lj1/a;->i:Li1/c;

    iget p0, p0, Lj1/a;->j:I

    invoke-interface {v0, p0}, Li1/c;->L(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method


# virtual methods
.method public C()V
    .locals 2

    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    const-string v1, "reattachOverlay"

    invoke-virtual {v0, v1}, Lj1/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    sget v0, Lj1/a;->p:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lj1/a;->z()V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 2

    iget-boolean v0, p0, Lj1/a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj1/a;->c:Landroid/os/Handler;

    new-instance v1, Lj1/i;

    invoke-direct {v1, p0}, Lj1/i;-><init>(Lj1/a;)V

    invoke-static {v0, v1}, Lj1/m;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public F(Lj1/a$a;)V
    .locals 3

    const-string v0, "DrawerOverlayClient"

    iget-object v1, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v1}, Lj1/a$a;->b(Lj1/a$a;)I

    move-result v1

    invoke-static {p1}, Lj1/a$a;->b(Lj1/a$a;)I

    move-result v2

    if-eq v1, v2, :cond_1

    iput-object p1, p0, Lj1/a;->m:Lj1/a$a;

    iget-object p1, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lj1/a;->z()V

    :cond_0
    iget-object p1, p0, Lj1/a;->d:Lj1/f;

    iget-object p0, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {p0}, Lj1/a$a;->b(Lj1/a$a;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "setClientOptions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lj1/f;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    sget v1, Lj1/a;->p:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v1}, Lj1/a$a;->c(Lj1/a$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lj1/a$a;->c(Lj1/a$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    iput-object p1, p0, Lj1/a;->m:Lj1/a$a;

    iget-object p1, p0, Lj1/a;->i:Li1/c;

    if-eqz p1, :cond_4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "partner_overlay_icon"

    iget-object v2, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v2}, Lj1/a$a;->c(Lj1/a$a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "partner_overlay_product_name"

    iget-object v2, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v2}, Lj1/a$a;->d(Lj1/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_overlay_is_default"

    iget-object v2, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v2}, Lj1/a$a;->e(Lj1/a$a;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lj1/a;->i:Li1/c;

    invoke-interface {v1, p1}, Li1/c;->n(Landroid/os/Bundle;)V

    iget-object p0, p0, Lj1/a;->d:Lj1/f;

    const-string p1, "updateClientOptions"

    invoke-virtual {p0, p1}, Lj1/f;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "updateClientOptions not called since the overlay has not yet attached"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "updateClientOptions() to set partner overlay icon failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    const-string v1, "startMove"

    invoke-virtual {v0, v1}, Lj1/f;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lj1/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lj1/a;->i:Li1/c;

    invoke-interface {p0}, Li1/c;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public I(F)V
    .locals 2

    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    const-string v1, "updateMove"

    invoke-virtual {v0, v1, p1}, Lj1/f;->c(Ljava/lang/String;F)V

    invoke-direct {p0}, Lj1/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lj1/a;->i:Li1/c;

    invoke-interface {p0, p1}, Li1/c;->G(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method final a(Li1/c;)V
    .locals 4

    iget-object v0, p0, Lj1/a;->e:Lj1/f;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Connected"

    invoke-virtual {v0, v3, v2}, Lj1/f;->d(Ljava/lang/String;Z)V

    iput-object p1, p0, Lj1/a;->i:Li1/c;

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lj1/a;->E(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lj1/a;->z()V

    :cond_2
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lj1/a;->A()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isConnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/a;->f:Lj1/m;

    invoke-virtual {v0}, Lj1/m;->c()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act.isBound: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/a;->g:Lj1/d;

    invoke-virtual {v0}, Lj1/m;->c()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app.isBound: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget v0, Lj1/a;->p:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serviceVersion: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x11

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "clientVersion: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v0}, Lj1/a$a;->e(Lj1/a$a;)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1d

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isGoogleOverlayDefault: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v0}, Lj1/a$a;->d(Lj1/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "partnerOverlayProductName: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v0}, Lj1/a$a;->c(Lj1/a$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x22

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isPartnerOverlayIconPresent: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lj1/a;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivityState: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lj1/a;->l:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mServiceStatus: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/a;->m:Lj1/a$a;

    invoke-static {v0}, Lj1/a$a;->b(Lj1/a$a;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2d

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentServiceConnectionOptions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    invoke-virtual {v0, p1, p2}, Lj1/f;->e(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lj1/a;->e:Lj1/f;

    invoke-virtual {p0, p1, p2}, Lj1/f;->e(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    const-string v1, "endMove"

    invoke-virtual {v0, v1}, Lj1/f;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lj1/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lj1/a;->i:Li1/c;

    invoke-interface {p0}, Li1/c;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 3

    invoke-static {p1}, Lj1/a;->B(I)I

    move-result v0

    iget-object v1, p0, Lj1/a;->d:Lj1/f;

    const-string v2, "hideOverlay"

    invoke-virtual {v1, v2, p1}, Lj1/f;->b(Ljava/lang/String;I)V

    iget-object p0, p0, Lj1/a;->i:Li1/c;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Li1/c;->o(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    const-string v1, "hideOverlay"

    invoke-virtual {v0, v1, p1}, Lj1/f;->d(Ljava/lang/String;Z)V

    iget-object p0, p0, Lj1/a;->i:Li1/c;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Li1/c;->o(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 2

    iget-boolean v0, p0, Lj1/a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    const-string v1, "attachedToWindow"

    invoke-virtual {v0, v1}, Lj1/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lj1/a;->r(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lj1/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lj1/a;->q(Z)V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-boolean v0, p0, Lj1/a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    const-string v1, "detachedFromWindow"

    invoke-virtual {v0, v1}, Lj1/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj1/a;->r(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public v()V
    .locals 4

    iget-boolean v0, p0, Lj1/a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lj1/a;->j:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lj1/a;->j:I

    iget-object v1, p0, Lj1/a;->i:Li1/c;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2

    :try_start_0
    sget v2, Lj1/a;->p:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    invoke-interface {v1}, Li1/c;->l()V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Li1/c;->L(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    iget p0, p0, Lj1/a;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lj1/f;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public w()V
    .locals 4

    iget-boolean v0, p0, Lj1/a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lj1/a;->j:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lj1/a;->j:I

    iget-object v1, p0, Lj1/a;->i:Li1/c;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2

    :try_start_0
    sget v2, Lj1/a;->p:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    invoke-interface {v1}, Li1/c;->m()V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Li1/c;->L(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    iget p0, p0, Lj1/a;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lj1/f;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public x()V
    .locals 3

    iget-boolean v0, p0, Lj1/a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj1/a;->g:Lj1/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj1/d;->i(Z)V

    invoke-virtual {p0}, Lj1/a;->D()V

    iget v0, p0, Lj1/a;->j:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj1/a;->j:I

    iget-object v1, p0, Lj1/a;->i:Li1/c;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v1, v0}, Li1/c;->L(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    iget p0, p0, Lj1/a;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lj1/f;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public y()V
    .locals 3

    iget-boolean v0, p0, Lj1/a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj1/a;->g:Lj1/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj1/d;->i(Z)V

    iget-object v0, p0, Lj1/a;->f:Lj1/m;

    invoke-virtual {v0}, Lj1/m;->a()V

    iget v0, p0, Lj1/a;->j:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lj1/a;->j:I

    iget-object v1, p0, Lj1/a;->i:Li1/c;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lj1/a;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v1, v0}, Li1/c;->L(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lj1/a;->d:Lj1/f;

    iget p0, p0, Lj1/a;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lj1/f;->b(Ljava/lang/String;I)V

    return-void
.end method
