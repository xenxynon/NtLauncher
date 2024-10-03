.class public final Ll4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll4/b$b;
    }
.end annotation


# static fields
.field public static final g:Ll4/b$b;

.field private static final h:Ln5/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln5/e<",
            "Ll4/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/app/Application;

.field private b:Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;

.field private c:Z

.field private d:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

.field private e:Ljava/io/File;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll4/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll4/b$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ll4/b;->g:Ll4/b$b;

    sget-object v0, Ll4/b$a;->g:Ll4/b$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Ll4/b;->h:Ln5/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Ll4/b;->a:Landroid/app/Application;

    sget-object v1, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_DEFAULT:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    iput-object v1, p0, Ll4/b;->d:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    new-instance v1, Ljava/io/File;

    sget-object v2, Ll4/a;->a:Ll4/a;

    iget-object v3, p0, Ll4/b;->d:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    invoke-virtual {v2, v3}, Ll4/a;->a(Lcom/nothing/launcher/ossupport/vibrate/EffectType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ll4/b;->e:Ljava/io/File;

    const/4 v1, 0x2

    iput v1, p0, Ll4/b;->f:I

    new-instance v1, Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;

    invoke-direct {v1, v0}, Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ll4/b;->b:Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ll4/b;->g(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Ll4/b;->c:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ll4/b$c;

    invoke-direct {v2, p0, v1}, Ll4/b$c;-><init>(Ll4/b;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v1, Lk4/b;->a:Lk4/b$b;

    invoke-virtual {v1}, Lk4/b$b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ll4/b;->h()I

    move-result v1

    iput v1, p0, Ll4/b;->f:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ll4/b$d;

    invoke-direct {v2, p0, v1}, Ll4/b$d;-><init>(Ll4/b;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_intensity"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Ll4/b;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Ll4/b;->a:Landroid/app/Application;

    return-object p0
.end method

.method public static final synthetic b()Ln5/e;
    .locals 1

    sget-object v0, Ll4/b;->h:Ln5/e;

    return-object v0
.end method

.method public static final synthetic c(Ll4/b;Landroid/content/ContentResolver;)Z
    .locals 0

    invoke-direct {p0, p1}, Ll4/b;->g(Landroid/content/ContentResolver;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Ll4/b;)I
    .locals 0

    invoke-direct {p0}, Ll4/b;->h()I

    move-result p0

    return p0
.end method

.method public static final synthetic e(Ll4/b;Z)V
    .locals 0

    iput-boolean p1, p0, Ll4/b;->c:Z

    return-void
.end method

.method public static final synthetic f(Ll4/b;I)V
    .locals 0

    iput p1, p0, Ll4/b;->f:I

    return-void
.end method

.method private final g(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string p0, "haptic_feedback_enabled"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final h()I
    .locals 2

    iget-object p0, p0, Ll4/b;->a:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_intensity"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final i(Lcom/nothing/launcher/ossupport/vibrate/EffectType;ILy5/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/ossupport/vibrate/EffectType;",
            "I",
            "Ly5/a<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ll4/b;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Ll4/b;->b:Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    const-string p0, "VibrateProxyOS -> vibratePattern type is null"

    invoke-static {p0}, Ly2/e;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lk4/b;->a:Lk4/b$b;

    invoke-virtual {v1}, Lk4/b$b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_DEFAULT:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    if-ne p1, v1, :cond_3

    iget p1, p0, Ll4/b;->f:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_STRONG:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_WEAK:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    :cond_3
    :goto_0
    iget-object v1, p0, Ll4/b;->d:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    if-eq v1, p1, :cond_4

    new-instance v1, Ljava/io/File;

    sget-object v2, Ll4/a;->a:Ll4/a;

    invoke-virtual {v2, p1}, Ll4/a;->a(Lcom/nothing/launcher/ossupport/vibrate/EffectType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ll4/b;->e:Ljava/io/File;

    iput-object p1, p0, Ll4/b;->d:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    :cond_4
    iget-object p0, p0, Ll4/b;->e:Ljava/io/File;

    invoke-virtual {v0, p0, p2}, Lcom/nothing/launcher/ossupport/vibrate/VibrateProxyOS;->vibratePattern(Ljava/io/File;I)Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ly5/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/t;

    :cond_6
    return-void
.end method
