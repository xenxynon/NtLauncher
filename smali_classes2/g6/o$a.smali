.class public final Lg6/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lz5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/o;->h(Lg6/g;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lz5/a;"
    }
.end annotation


# instance fields
.field final synthetic g:Lg6/g;


# direct methods
.method public constructor <init>(Lg6/g;)V
    .locals 0

    iput-object p1, p0, Lg6/o$a;->g:Lg6/g;

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

    iget-object p0, p0, Lg6/o$a;->g:Lg6/g;

    invoke-interface {p0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
