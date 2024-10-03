.class public final synthetic Lk/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/v;->a:Lcom/android/launcher3/icons/IconCache;

    iput-boolean p2, p0, Lk/v;->b:Z

    iput-boolean p3, p0, Lk/v;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lk/v;->a:Lcom/android/launcher3/icons/IconCache;

    iget-boolean v1, p0, Lk/v;->b:Z

    iget-boolean p0, p0, Lk/v;->c:Z

    check-cast p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/icons/IconCache;->s(Lcom/android/launcher3/icons/IconCache;ZZLcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
