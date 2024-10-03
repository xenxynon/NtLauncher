.class public final synthetic Lcom/android/launcher3/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroid/os/UserHandle;

.field public final synthetic b:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/t;->a:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher3/util/t;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/t;->a:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher3/util/t;->b:Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->h(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method
