.class public final Lx1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/e$a;
    }
.end annotation


# static fields
.field public static final b:Lx1/e$a;


# instance fields
.field private final a:Landroid/content/res/loader/ResourcesLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx1/e$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lx1/e;->b:Lx1/e$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/loader/ResourcesLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/e;->a:Landroid/content/res/loader/ResourcesLoader;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/loader/ResourcesLoader;Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/e;-><init>(Landroid/content/res/loader/ResourcesLoader;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/res/loader/ResourcesLoader;

    const/4 v1, 0x0

    iget-object p0, p0, Lx1/e;->a:Landroid/content/res/loader/ResourcesLoader;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    :cond_0
    return-void
.end method
