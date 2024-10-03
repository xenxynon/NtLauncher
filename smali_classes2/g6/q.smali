.class public final Lg6/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg6/g<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lg6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg6/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg6/g;Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg6/g<",
            "+TT;>;",
            "Ly5/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/q;->a:Lg6/g;

    iput-object p2, p0, Lg6/q;->b:Ly5/l;

    return-void
.end method

.method public static final synthetic b(Lg6/q;)Lg6/g;
    .locals 0

    iget-object p0, p0, Lg6/q;->a:Lg6/g;

    return-object p0
.end method

.method public static final synthetic c(Lg6/q;)Ly5/l;
    .locals 0

    iget-object p0, p0, Lg6/q;->b:Ly5/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lg6/q$a;

    invoke-direct {v0, p0}, Lg6/q$a;-><init>(Lg6/q;)V

    return-object v0
.end method
