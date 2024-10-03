.class public final Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Lcom/nothing/cardservice/CardWidgetMetaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler$a;

    invoke-direct {v0}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler$a;-><init>()V

    sput-object v0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/nothing/cardservice/CardWidgetMetaInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->g:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->N:Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->g:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-virtual {v0, p1, p0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;->a(Landroid/content/Context;Lcom/nothing/cardservice/CardWidgetMetaInfo;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->g:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-virtual {v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->b()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->g:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->i()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method public final c(Lq2/m;ILcom/android/launcher3/model/data/ItemInfo;I)Z
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p0, p3}, Lcom/android/launcher3/util/PendingRequestArgs;->forCardInfo(ILcom/nothing/launcher/card/CardWidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    invoke-virtual {p1}, Lq2/m;->getCardWidgetHost()Lcom/nothing/launcher/card/p;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->g:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-virtual {p3, p1, p2, p0, p4}, Lcom/nothing/launcher/card/p;->P(Lcom/android/launcher3/BaseDraggingActivity;ILcom/nothing/cardservice/CardWidgetMetaInfo;I)V

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->g:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
