.class public final synthetic Lk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic b:Lcom/android/launcher3/model/data/PackageItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/PackageItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/o;->a:Lcom/android/launcher3/icons/IconCache;

    iput-object p2, p0, Lk/o;->b:Lcom/android/launcher3/model/data/PackageItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk/o;->a:Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, Lk/o;->b:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/IconCache;->n(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method
