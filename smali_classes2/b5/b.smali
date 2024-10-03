.class public final Lb5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb5/b$a;
    }
.end annotation


# static fields
.field public static final c:Lb5/b$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb5/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lb5/b;->c:Lb5/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "launcherContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/b;->a:Landroid/content/Context;

    new-instance p1, Lb5/b$b;

    invoke-direct {p1, p0}, Lb5/b$b;-><init>(Lb5/b;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lb5/b;->b:Ln5/e;

    return-void
.end method

.method private final c()Lcom/android/launcher3/Workspace;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lb5/b;->b:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Workspace;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lb5/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final b(I)I
    .locals 3

    invoke-direct {p0}, Lb5/b;->c()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lu4/c;->a:Lu4/c;

    invoke-virtual {v2}, Lu4/c;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    iget-object p0, p0, Lb5/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getNumPagesForWallpaperParallax()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p1, p0, -0x1

    :cond_0
    move v1, p1

    :cond_1
    return v1
.end method
