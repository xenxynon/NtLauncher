.class public final synthetic Lu4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final synthetic g:Lu4/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lu4/b;

    invoke-direct {v0}, Lu4/b;-><init>()V

    sput-object v0, Lu4/b;->g:Lu4/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lu4/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
