.class public final synthetic Lcom/android/launcher3/testing/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/testing/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/testing/s;

    invoke-direct {v0}, Lcom/android/launcher3/testing/s;-><init>()V

    sput-object v0, Lcom/android/launcher3/testing/s;->a:Lcom/android/launcher3/testing/s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
