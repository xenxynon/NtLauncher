.class public Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/testing/shared/TestInformationRequest;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cellInd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest$1;

    invoke-direct {v0}, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;->cellInd:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;-><init>(Landroid/os/Parcel;)V

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

    iget p0, p0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;->cellInd:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
