.class final Lz4/i$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/util/List<",
        "+",
        "Lcom/nothing/launcher/widgets/l;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final g:Lz4/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/i$a;

    invoke-direct {v0}, Lz4/i$a;-><init>()V

    sput-object v0, Lz4/i$a;->g:Lz4/i$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nothing/launcher/widgets/l;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/nothing/launcher/widgets/m;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lz4/i$a;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
