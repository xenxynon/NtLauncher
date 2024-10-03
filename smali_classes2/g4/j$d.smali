.class final Lg4/j$d;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/j;->l(Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lcom/android/launcher3/model/WidgetItem;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lg4/j$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg4/j$d;

    invoke-direct {v0}, Lg4/j$d;-><init>()V

    sput-object v0, Lg4/j$d;->g:Lg4/j$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/Boolean;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lg4/j$b;

    invoke-direct {p0}, Lg4/j$b;-><init>()V

    check-cast p1, Lg4/a;

    invoke-virtual {p0, p1}, Lg4/j$b;->a(Lg4/a;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0, p1}, Lg4/j$d;->a(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
