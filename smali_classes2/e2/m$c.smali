.class final Le2/m$c;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/m;->M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedMediaPlayerContainerView"
    f = "SimulatedMediaPlayerContainerView.kt"
    l = {
        0x46,
        0x47
    }
    m = "setWidgetId"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field synthetic k:Ljava/lang/Object;

.field final synthetic l:Le2/m;

.field m:I


# direct methods
.method constructor <init>(Le2/m;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/m;",
            "Lq5/d<",
            "-",
            "Le2/m$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/m$c;->l:Le2/m;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le2/m$c;->k:Ljava/lang/Object;

    iget p1, p0, Le2/m$c;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le2/m$c;->m:I

    iget-object p1, p0, Le2/m$c;->l:Le2/m;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Le2/m;->H(Le2/m;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
