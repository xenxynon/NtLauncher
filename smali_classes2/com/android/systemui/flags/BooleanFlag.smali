.class public abstract Lcom/android/systemui/flags/BooleanFlag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/flags/ParcelableFlag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/flags/BooleanFlag$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/flags/ParcelableFlag<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/flags/BooleanFlag;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lcom/android/systemui/flags/BooleanFlag$a;


# instance fields
.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/flags/BooleanFlag$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/systemui/flags/BooleanFlag;->m:Lcom/android/systemui/flags/BooleanFlag$a;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/BooleanFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "namespace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/flags/BooleanFlag;->g:I

    iput-object p2, p0, Lcom/android/systemui/flags/BooleanFlag;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/flags/BooleanFlag;->i:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/flags/BooleanFlag;->j:Z

    iput-boolean p5, p0, Lcom/android/systemui/flags/BooleanFlag;->k:Z

    iput-boolean p6, p0, Lcom/android/systemui/flags/BooleanFlag;->l:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/flags/BooleanFlag;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/flags/BooleanFlag;->j:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/flags/BooleanFlag;->g:I

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/flags/BooleanFlag;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/flags/BooleanFlag;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/flags/BooleanFlag;->l:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/flags/BooleanFlag;->k:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->a()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->f()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->e()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
