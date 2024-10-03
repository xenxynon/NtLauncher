.class public Lcom/android/launcher3/util/PendingRequestArgs;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/util/PendingRequestArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mArg1:I

.field private final mArg2:I

.field private final mObject:Landroid/os/Parcelable;

.field private final mObjectType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/PendingRequestArgs$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/PendingRequestArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILandroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    iput p2, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg2:I

    iput p3, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    iput-object p4, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    return-void
.end method

.method private constructor <init>(IILandroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(IIILandroid/os/Parcelable;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/ItemInfo;->readFromValues(Landroid/content/ContentValues;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    return-void
.end method

.method public static forCardInfo(ILcom/nothing/launcher/card/CardWidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v0
.end method

.method public static forIntent(ILandroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v0
.end method

.method public static forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 3

    instance-of v0, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->sourceContainer:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Lcom/android/launcher3/util/PendingRequestArgs;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(IIILandroid/os/Parcelable;)V

    invoke-virtual {v1, p2}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCardHandler()Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    check-cast p0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCardId()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPendingIntent()Landroid/content/Intent;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    check-cast p0, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRequestCode()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    check-cast p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWidgetId()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWidgetSourceContainer()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg2:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Lcom/android/launcher3/util/ContentWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/ContentValues;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/data/ItemInfo;->writeToValues(Lcom/android/launcher3/util/ContentWriter;)V

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
