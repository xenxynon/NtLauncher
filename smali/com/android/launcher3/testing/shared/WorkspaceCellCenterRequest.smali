.class public Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/testing/shared/TestInformationRequest;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cellX:I

.field public final cellY:I

.field public final spanX:I

.field public final spanY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest$1;

    invoke-direct {v0}, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellX:I

    iput p2, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellY:I

    iput p3, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanX:I

    iput p4, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanY:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;-><init>(IIII)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanY:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
