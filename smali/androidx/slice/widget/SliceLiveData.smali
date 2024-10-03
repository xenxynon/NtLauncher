.class public final Landroidx/slice/widget/SliceLiveData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceLiveData$OnErrorListener;,
        Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;,
        Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;
    }
.end annotation


# static fields
.field public static final OLD_BASIC:Landroidx/slice/SliceSpec;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final OLD_LIST:Landroidx/slice/SliceSpec;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final SUPPORTED_SPECS:Ljava/util/Set;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.app.slice.BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/widget/SliceLiveData;->OLD_BASIC:Landroidx/slice/SliceSpec;

    new-instance v1, Landroidx/slice/SliceSpec;

    const-string v3, "androidx.app.slice.LIST"

    invoke-direct {v1, v3, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/slice/widget/SliceLiveData;->OLD_LIST:Landroidx/slice/SliceSpec;

    new-instance v3, Landroidx/collection/ArraySet;

    const/4 v4, 0x4

    new-array v4, v4, [Landroidx/slice/SliceSpec;

    sget-object v5, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v0, v4, v2

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static fromStream(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/slice/SliceViewManager;",
            "Ljava/io/InputStream;",
            "Landroidx/slice/widget/SliceLiveData$OnErrorListener;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;-><init>(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    return-object v0
.end method

.method public static fromStream(Landroid/content/Context;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            "Landroidx/slice/widget/SliceLiveData$OnErrorListener;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroidx/slice/widget/SliceLiveData;->fromStream(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method
