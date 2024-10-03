.class public final Ly3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly3/b;

    invoke-direct {v0}, Ly3/b;-><init>()V

    sput-object v0, Ly3/b;->a:Ly3/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/UserHandle;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "zzz_dual_app_icon_badge_plain"

    const-string p3, "drawable"

    const-string v0, "android"

    invoke-virtual {p0, p1, p3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    sget p0, Lcom/android/launcher3/icons/R$drawable;->ic_work_app_badge_themed:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/launcher3/icons/R$drawable;->ic_work_app_badge:I

    :goto_0
    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/os/UserHandle;)Z
    .locals 0

    const-string p0, "user"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const/16 p1, 0x3e7

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
