.class public final synthetic Lcom/android/launcher3/testing/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/testing/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/testing/r;

    invoke-direct {v0}, Lcom/android/launcher3/testing/r;-><init>()V

    sput-object v0, Lcom/android/launcher3/testing/r;->a:Lcom/android/launcher3/testing/r;

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

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
