.class public final Lg4/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/j;->k(Ljava/util/List;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo5/y<",
        "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
        "Lcom/android/launcher3/model/data/PackageItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lg4/j$c;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ")",
            "Lcom/android/launcher3/model/data/PackageItemInfo;"
        }
    .end annotation

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    iget-object p0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    return-object p0
.end method

.method public b()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lg4/j$c;->a:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
