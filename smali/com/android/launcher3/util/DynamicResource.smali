.class public Lcom/android/launcher3/util/DynamicResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/h;
.implements Li0/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li0/h;",
        "Li0/f<",
        "Li0/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/DynamicResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPlugin:Li0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/util/j;->a:Lcom/android/launcher3/util/j;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/DynamicResource;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v0, Li0/h;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Li0/f;Ljava/lang/Class;Z)V

    return-void
.end method

.method public static synthetic o(Landroid/content/Context;)Lcom/android/launcher3/util/DynamicResource;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/DynamicResource;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/DynamicResource;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static provider(Landroid/content/Context;)Li0/h;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/DynamicResource;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DynamicResource;

    iget-object v0, p0, Lcom/android/launcher3/util/DynamicResource;->mPlugin:Li0/h;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getDimension(I)F
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getFloat(I)F
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public bridge synthetic onPluginConnected(Li0/d;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Li0/h;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/DynamicResource;->onPluginConnected(Li0/h;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Li0/h;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/DynamicResource;->mPlugin:Li0/h;

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Li0/d;)V
    .locals 0

    check-cast p1, Li0/h;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/DynamicResource;->onPluginDisconnected(Li0/h;)V

    return-void
.end method

.method public onPluginDisconnected(Li0/h;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/DynamicResource;->mPlugin:Li0/h;

    return-void
.end method
