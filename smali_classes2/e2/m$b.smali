.class final Le2/m$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/m;->J(Landroid/view/View;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedMediaPlayerContainerView"
    f = "SimulatedMediaPlayerContainerView.kt"
    l = {
        0x5d
    }
    m = "setAllMusicMeta"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Le2/m;

.field j:I


# direct methods
.method constructor <init>(Le2/m;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/m;",
            "Lq5/d<",
            "-",
            "Le2/m$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/m$b;->i:Le2/m;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le2/m$b;->h:Ljava/lang/Object;

    iget p1, p0, Le2/m$b;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le2/m$b;->j:I

    iget-object p1, p0, Le2/m$b;->i:Le2/m;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Le2/m;->G(Le2/m;Landroid/view/View;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
