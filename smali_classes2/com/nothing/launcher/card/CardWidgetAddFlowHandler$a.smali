.class public final Lcom/nothing/launcher/card/CardWidgetAddFlowHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;
    .locals 1

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    const-class v0, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-direct {p0, p1}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;-><init>(Lcom/nothing/cardservice/CardWidgetMetaInfo;)V

    return-object p0
.end method

.method public final b(I)[Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;
    .locals 0

    new-array p0, p1, [Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler$a;->a(Landroid/os/Parcel;)Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler$a;->b(I)[Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    move-result-object p0

    return-object p0
.end method
