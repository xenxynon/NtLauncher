.class public final Lg6/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/k;->b(Ly5/p;)Lg6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg6/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ly5/p;


# direct methods
.method public constructor <init>(Ly5/p;)V
    .locals 0

    iput-object p1, p0, Lg6/k$a;->a:Ly5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lg6/k$a;->a:Ly5/p;

    invoke-static {p0}, Lg6/k;->a(Ly5/p;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
