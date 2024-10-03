.class final Ly4/b$e;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly4/b;->j(Landroid/content/ComponentName;Ljava/util/function/Consumer;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.launcher.track.DefaultHomeTracker"
    f = "DefaultHomeTracker.kt"
    l = {
        0x89,
        0x54,
        0x56
    }
    m = "updateDefaultHomeInDataStoreIfNeed"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Ly4/b;

.field l:I


# direct methods
.method constructor <init>(Ly4/b;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/b;",
            "Lq5/d<",
            "-",
            "Ly4/b$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ly4/b$e;->k:Ly4/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ly4/b$e;->j:Ljava/lang/Object;

    iget p1, p0, Ly4/b$e;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ly4/b$e;->l:I

    iget-object p1, p0, Ly4/b$e;->k:Ly4/b;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Ly4/b;->b(Ly4/b;Landroid/content/ComponentName;Ljava/util/function/Consumer;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
