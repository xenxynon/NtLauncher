.class public Lcom/android/wm/shell/common/bubbles/BubbleInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/common/bubbles/BubbleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/drawable/Icon;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/common/bubbles/BubbleInfo$a;

    invoke-direct {v0}, Lcom/android/wm/shell/common/bubbles/BubbleInfo$a;-><init>()V

    sput-object v0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->i:Ljava/lang/String;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->l:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->n:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/wm/shell/common/bubbles/BubbleInfo$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->l:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->k:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->i:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->j:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->n:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->g:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->l:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->n:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
