.class public final Landroidx/collection/LruCacheKt$lruCache$4;
.super Landroidx/collection/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/LruCacheKt;->lruCache(ILy5/p;Ly5/l;Ly5/r;)Landroidx/collection/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic $create:Ly5/l;

.field final synthetic $maxSize:I

.field final synthetic $onEntryRemoved:Ly5/r;

.field final synthetic $sizeOf:Ly5/p;


# direct methods
.method public constructor <init>(Ly5/p;Ly5/l;Ly5/r;II)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/LruCacheKt$lruCache$4;->$sizeOf:Ly5/p;

    iput-object p2, p0, Landroidx/collection/LruCacheKt$lruCache$4;->$create:Ly5/l;

    iput-object p3, p0, Landroidx/collection/LruCacheKt$lruCache$4;->$onEntryRemoved:Ly5/r;

    iput p4, p0, Landroidx/collection/LruCacheKt$lruCache$4;->$maxSize:I

    invoke-direct {p0, p5}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/collection/LruCacheKt$lruCache$4;->$create:Ly5/l;

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/collection/LruCacheKt$lruCache$4;->$onEntryRemoved:Ly5/r;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3, p4}, Ly5/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/collection/LruCacheKt$lruCache$4;->$sizeOf:Ly5/p;

    invoke-interface {p0, p1, p2}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
